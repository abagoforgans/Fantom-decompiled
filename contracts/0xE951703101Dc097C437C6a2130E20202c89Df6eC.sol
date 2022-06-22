contract main {




// =====================  Runtime code  =====================


#
#  - poolSummitEmission(uint256 arg1, address arg2, uint8 arg3)
#  - sub_7c162c07(?)
#  - depositTokenManagement(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5)
#  - withdrawalTokenManagement(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5)
#  - mintPoolSummit(uint256 arg1, address arg2, uint8 arg3)
#  - tokenElevationEmissionMultiplier(address arg1, uint8 arg2)
#
bool stor0; offset 256
uint8 stor0; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 168
address owner;
uint256 stor1;
address stor10;
address stor11;
address stor12;
address stor13;
uint256 launchTimestamp;
uint256 summitPerSecond;
uint256 devSummitPerSecond;
uint256 referralsSummitPerSecond;
array of uint256 stor18;
mapping of uint8 poolElevation;
address summitAddress;
mapping of address tokenPassthroughStrategy;
uint256 totalSharedAlloc;
mapping of uint8 stor22;
uint256 stor23;
mapping of uint256 tokenBaseAlloc;
mapping of struct tokenSharedAlloc;
mapping of uint16 tokenElevationPid;
mapping of uint8 stor27;
mapping of struct sub_38deefb0;
uint8 stor3; offset 160
address summitLpAddress;
address devAddAddress;
address expedAddAddress;
address sub_a52b321eAddress;
uint256 sub_511d09a8;
address trustedSeederAddAddress;
array of address stor89622809563556123081897041840816014639138942293158154584485133346364573191189;
address stor9;

function totalSharedAlloc() payable {
    return totalSharedAlloc
}

function summitLp() payable {
    return summitLpAddress
}

function sub_38deefb0(?) payable {
    require calldata.size - 4 >= 32
    return sub_38deefb0[arg1].field_0, sub_38deefb0[arg1].field_256
}

function tokenPassthroughStrategy(address arg1) payable {
    require calldata.size - 4 >= 32
    return tokenPassthroughStrategy[arg1]
}

function tokenAllocExistence(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor22[arg1])
}

function tokenElevationIsEarning(address arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor27[arg1][arg2])
}

function expedAdd() payable {
    return expedAddAddress
}

function sub_511d09a8(?) payable {
    return sub_511d09a8
}

function devAdd() payable {
    return devAddAddress
}

function launchTimestamp() payable {
    return launchTimestamp
}

function poolIds(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor18.length
    return poolIds[uint8(arg1)]
}

function devSummitPerSecond() payable {
    return devSummitPerSecond
}

function tokenSharedAlloc(address arg1) payable {
    require calldata.size - 4 >= 32
    return tokenSharedAlloc[arg1].field_0
}

function poolsCount() payable {
    return stor18.length
}

function owner() payable {
    return owner
}

function summitPerSecond() payable {
    return summitPerSecond
}

function summit() payable {
    return summitAddress
}

function sub_a52b321e(?) payable {
    return sub_a52b321eAddress
}

function tokenElevationPid(address arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    return tokenElevationPid[arg1][arg2]
}

function poolElevation(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    return poolElevation[arg1]
}

function trustedSeederAdd() payable {
    return trustedSeederAddAddress
}

function sub_e352998a(?) payable {
    return bool(stor3)
}

function tokenBaseAlloc(address arg1) payable {
    require calldata.size - 4 >= 32
    return tokenBaseAlloc[arg1]
}

function referralsSummitPerSecond() payable {
    return referralsSummitPerSecond
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function timeDiffSeconds(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    return (arg2 - arg1)
}

function setDevAdd(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'Missing address'
    if devAddAddress != msg.sender:
        revert with 0, 'Forbidden'
    devAddAddress = arg1
    emit SetTreasuryAddress(msg.sender, arg1);
}

function referralBurnTimestamp() payable {
    require ext_code.size(stor9)
    staticcall stor9.0x79bc6d53 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_f09178e2(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_38deefb0[address(arg1)].field_0 = 0
    sub_38deefb0[address(arg1)].field_256 = 0
    sub_38deefb0[address(arg1)].field_256 = 0
    emit 0x7273ac44: arg1
}

function massUpdatePools() payable {
    require ext_code.size(stor11)
    call stor11.0x630b5ba1 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor12)
    call stor12.0x630b5ba1 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function referralRewardsMintSafetyHatch(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor10 != msg.sender:
        revert with 0, 'Only Summit Referrals'
    if arg1 <= 0:
        revert with 0, 'Non zero'
    require ext_code.size(summitAddress)
    call summitAddress.0x449a52f8 with:
         gas gas_remaining wei
        args stor10, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function roundEndTimestamp(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 < 1:
        revert with 0, 'Not elev or exped'
    if arg1 > 4:
        revert with 0, 'Not elev or exped'
    require ext_code.size(stor9)
    staticcall stor9.0xe7d7cf0e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setTrustedSeederAdd(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'Missing address'
    trustedSeederAddAddress = arg1
    require ext_code.size(stor9)
    call stor9.0x51d20ef1 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit SetTrustedSeederAddress(msg.sender, arg1);
}

function createTokenAllocation(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor22[address(arg1)]:
        revert with 0, 'Duplicated token alloc'
    if arg2 > 10000:
        revert with 0, 'Allocation must be <= 100X'
    stor22[address(arg1)] = 1
    stor23++
    storC624[stor23] = arg1
    tokenBaseAlloc[address(arg1)] = arg2
    tokenSharedAlloc[address(arg1)].field_0 = 0
    emit TokenAllocCreated(arg2, arg1);
}

function rolloverReferral() payable {
    require ext_code.size(stor9)
    staticcall stor9.0xf59f21af with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor10)
    call stor10.burnUnclaimedReferralRewardsAndRolloverRound(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor9)
    call stor9.rolloverReferralBurn() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit RolloverReferral(msg.sender);
}

function sub_672947c4(?) payable {
    require calldata.size - 4 >= 96
    if arg1 < 1:
        revert with 0, 'Not elev or exped'
    if arg1 > 4:
        revert with 0, 'Not elev or exped'
    if not arg1:
        require ext_code.size(stor11)
        call stor11.0x3ed09099 with:
             gas gas_remaining wei
            args arg1 << 248, arg2 << 240, arg3
    else:
        if 4 == arg1:
            require ext_code.size(stor13)
            call stor13.0x3ed09099 with:
                 gas gas_remaining wei
                args arg1 << 248, arg2 << 240, arg3
        else:
            require ext_code.size(stor12)
            call stor12.0x3ed09099 with:
                 gas gas_remaining wei
                args arg1 << 248, arg2 << 240, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e10118d3(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if tokenElevationPid[address(arg1)][4]:
        revert with 0, 'Duplicated'
    stor18.length++
    stor18[stor18.length.field_4].field_0 = stor18[stor18.length.field_4].field_0 and !(65535 * 256^(2 * stor18.length % 16)) or 256^(2 * stor18.length % 16) * uint16(stor18.length)
    poolElevation[uint16(stor18.length)] = 4
    tokenElevationPid[address(arg1)][4] = uint16(stor18.length)
    require ext_code.size(stor13)
    call stor13.0xc633e6c7 with:
         gas gas_remaining wei
        args 0, uint32(stor18.length), 1, address(arg1), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit ExpeditionCreated(address(arg1), arg2, arg3, uint16(stor18.length));
}

function rollover(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 < 1:
        revert with 0, 'Not elev or exped'
    if arg1 > 4:
        revert with 0, 'Not elev or exped'
    require ext_code.size(stor9)
    staticcall stor9.0xece184bf with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor9)
    call stor9.0x97b758ab with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor9)
    call stor9.rolloverElevation(uint8 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Rollover(arg1, msg.sender);
}

function isEarning(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    if poolElevation[arg1 << 240] > 4:
        revert with 0, 'Invalid elev'
    if not poolElevation[arg1 << 240]:
        require ext_code.size(stor11)
        staticcall stor11.0x4f7a1aa2 with:
                gas gas_remaining wei
               args arg1
    else:
        if 4 == poolElevation[arg1 << 240]:
            require ext_code.size(stor13)
            staticcall stor13.0x4f7a1aa2 with:
                    gas gas_remaining wei
                   args arg1
        else:
            require ext_code.size(stor12)
            staticcall stor12.0x4f7a1aa2 with:
                    gas gas_remaining wei
                   args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function token(uint16 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if poolElevation[arg1 << 240] > 4:
        revert with 0, 'Invalid elev'
    if not poolElevation[arg1 << 240]:
        require ext_code.size(stor11)
        staticcall stor11.0xc7d21f36 with:
                gas gas_remaining wei
               args arg1 << 240, arg2
    else:
        if 4 == poolElevation[arg1 << 240]:
            require ext_code.size(stor13)
            staticcall stor13.0xc7d21f36 with:
                    gas gas_remaining wei
                   args arg1 << 240, arg2
        else:
            require ext_code.size(stor12)
            staticcall stor12.0xc7d21f36 with:
                    gas gas_remaining wei
                   args arg1 << 240, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function depositFee(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'Pool doesnt exist'
    if arg1 >= stor18.length:
        revert with 0, 'Pool doesnt exist'
    if poolElevation[arg1 << 240] > 4:
        revert with 0, 'Invalid elev'
    if not poolElevation[arg1 << 240]:
        require ext_code.size(stor11)
        staticcall stor11.0x3a864e68 with:
                gas gas_remaining wei
               args arg1
    else:
        if 4 == poolElevation[arg1 << 240]:
            require ext_code.size(stor13)
            staticcall stor13.0x3a864e68 with:
                    gas gas_remaining wei
                   args arg1
        else:
            require ext_code.size(stor12)
            staticcall stor12.0x3a864e68 with:
                    gas gas_remaining wei
                   args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function stakedSupply(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'Pool doesnt exist'
    if arg1 >= stor18.length:
        revert with 0, 'Pool doesnt exist'
    if poolElevation[arg1 << 240] > 4:
        revert with 0, 'Invalid elev'
    if not poolElevation[arg1 << 240]:
        require ext_code.size(stor11)
        staticcall stor11.0x67ced2fb with:
                gas gas_remaining wei
               args arg1
    else:
        if 4 == poolElevation[arg1 << 240]:
            require ext_code.size(stor13)
            staticcall stor13.0x67ced2fb with:
                    gas gas_remaining wei
                   args arg1
        else:
            require ext_code.size(stor12)
            staticcall stor12.0x67ced2fb with:
                    gas gas_remaining wei
                   args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function retireTokenPassthroughStrategy(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not tokenPassthroughStrategy[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x654e6f20706173737468726f75676820737472617465677920746f207265746972,
                    mem[197 len 31]
    if tokenPassthroughStrategy[address(arg1)]:
        require ext_code.size(tokenPassthroughStrategy[address(arg1)])
        call tokenPassthroughStrategy[address(arg1)].retire(address arg1, address arg2) with:
             gas gas_remaining wei
            args expedAddAddress, devAddAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        tokenPassthroughStrategy[address(arg1)] = 0
    emit PassthroughStrategyRetired(arg1, tokenPassthroughStrategy[address(arg1)]);
}

function setExpedAdd(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'Missing address'
    if not sub_511d09a8:
        sub_a52b321eAddress = arg1
        sub_511d09a8 = block.timestamp + (72 * 24 * 3600)
        emit 0x9aa72e35: (block.timestamp + (72 * 24 * 3600)), msg.sender, arg1
    else:
        if sub_a52b321eAddress != arg1:
            sub_a52b321eAddress = arg1
            sub_511d09a8 = block.timestamp + (72 * 24 * 3600)
            emit 0x9aa72e35: (block.timestamp + (72 * 24 * 3600)), msg.sender, arg1
        else:
            if block.timestamp < sub_511d09a8:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0x7950726f706f73616c2065786973747320627574206e6f7420796574206d61747572,
                            mem[198 len 30]
            expedAddAddress = sub_a52b321eAddress
            emit SetExpeditionTreasuryAddress(msg.sender, sub_a52b321eAddress);
}

function rewards(uint16 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 <= 0:
        revert with 0, 'Pool doesnt exist'
    if arg1 >= stor18.length:
        revert with 0, 'Pool doesnt exist'
    if poolElevation[arg1 << 240] > 4:
        revert with 0, 'Invalid elev'
    if poolElevation[arg1 << 240] > 4:
        revert with 0, 'Invalid elev'
    if not poolElevation[arg1 << 240]:
        require ext_code.size(stor11)
        staticcall stor11.0x5bbf97b0 with:
                gas gas_remaining wei
               args arg1 << 240, arg2
    else:
        if 4 == poolElevation[arg1 << 240]:
            require ext_code.size(stor13)
            staticcall stor13.0x5bbf97b0 with:
                    gas gas_remaining wei
                   args arg1 << 240, arg2
        else:
            require ext_code.size(stor12)
            staticcall stor12.0x5bbf97b0 with:
                    gas gas_remaining wei
                   args arg1 << 240, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
}

function withdraw(uint16 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if arg1 <= 0:
        revert with 0, 'Pool doesnt exist'
    if arg1 >= stor18.length:
        revert with 0, 'Pool doesnt exist'
    if poolElevation[arg1 << 240] > 4:
        revert with 0, 'Invalid elev'
    if not poolElevation[arg1 << 240]:
        require ext_code.size(stor11)
        call stor11.0x775dd80f with:
             gas gas_remaining wei
            args 0, 0, arg2, arg3, msg.sender
    else:
        if 4 == poolElevation[arg1 << 240]:
            require ext_code.size(stor13)
            call stor13.0x775dd80f with:
                 gas gas_remaining wei
                args 0, 0, arg2, arg3, msg.sender
        else:
            require ext_code.size(stor12)
            call stor12.0x775dd80f with:
                 gas gas_remaining wei
                args 0, 0, arg2, arg3, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    emit Withdraw(ext_call.return_data[0], ext_call.return_data[32], msg.sender, arg1);
    stor1 = 1
}

function hypotheticalRewards(uint16 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 <= 0:
        revert with 0, 'Pool doesnt exist'
    if arg1 >= stor18.length:
        revert with 0, 'Pool doesnt exist'
    if poolElevation[arg1 << 240] > 4:
        revert with 0, 'Invalid elev'
    if poolElevation[arg1 << 240] > 4:
        revert with 0, 'Invalid elev'
    if not poolElevation[arg1 << 240]:
        require ext_code.size(stor11)
        staticcall stor11.hypotheticalRewards(uint16 arg1, address arg2) with:
                gas gas_remaining wei
               args arg1 << 240, arg2
    else:
        if 4 == poolElevation[arg1 << 240]:
            require ext_code.size(stor13)
            staticcall stor13.hypotheticalRewards(uint16 arg1, address arg2) with:
                    gas gas_remaining wei
                   args arg1 << 240, arg2
        else:
            require ext_code.size(stor12)
            staticcall stor12.hypotheticalRewards(uint16 arg1, address arg2) with:
                    gas gas_remaining wei
                   args arg1 << 240, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[32]
}

function sub_4c854126(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'Missing Summit Token'
    if not arg2:
        revert with 0, 'Missing Summit LP'
    if stor3:
        revert with 0, 'Already enabled'
    summitAddress = arg1
    summitLpAddress = arg2
    stor3 = 1
    launchTimestamp = block.timestamp
    require ext_code.size(stor9)
    call stor9.enable(uint256 arg1) with:
         gas gas_remaining wei
        args block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor10)
    call stor10.enable(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor11)
    call stor11.0x129f43b with:
         gas gas_remaining wei
        args launchTimestamp, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor13)
    call stor13.0x129f43b with:
         gas gas_remaining wei
        args launchTimestamp, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function redeemRewards(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor11 != msg.sender:
        if stor12 != msg.sender:
            if stor13 != msg.sender:
                revert with 0, 'Only subCarts'
    require ext_code.size(summitAddress)
    staticcall summitAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(summitAddress)
    if arg2 <= ext_call.return_data[0]:
        call summitAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), arg2
    else:
        call summitAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'SafeSummitTransfer: failed'
    require ext_code.size(stor10)
    call stor10.addReferralRewardsIfNecessary(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit RedeemRewards(arg2, arg1);
}

function switchTotem(uint8 arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if arg1 < 1:
        revert with 0, 'Not elev or exped'
    if arg1 > 4:
        revert with 0, 'Not elev or exped'
    require ext_code.size(stor9)
    staticcall stor9.0x2ae834e0 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 >= ext_call.return_data[31 len 1]:
        revert with 0, 'Invalid totem'
    if arg1 > 4:
        revert with 0, 'Invalid elev'
    if not arg1:
        require ext_code.size(stor11)
        call stor11.0xbdd28e77 with:
             gas gas_remaining wei
            args arg1 << 248, arg2 << 248, msg.sender
    else:
        if 4 == arg1:
            require ext_code.size(stor13)
            call stor13.0xbdd28e77 with:
                 gas gas_remaining wei
                args arg1 << 248, arg2 << 248, msg.sender
        else:
            require ext_code.size(stor12)
            call stor12.0xbdd28e77 with:
                 gas gas_remaining wei
                args arg1 << 248, arg2 << 248, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit SwitchTotem(arg2, msg.sender, arg1);
    stor1 = 1
}

function set(uint16 arg1, bool arg2, uint16 arg3, bool arg4) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if poolElevation[arg1 << 240] > 3:
        revert with 0, 'Not oasis or elev'
    if arg1 <= 0:
        revert with 0, 'Pool doesnt exist'
    if arg1 >= stor18.length:
        revert with 0, 'Pool doesnt exist'
    if arg3 > 400:
        revert with 0, 'Invalid fee'
    if arg4:
        require ext_code.size(stor11)
        call stor11.0x630b5ba1 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor12)
        call stor12.0x630b5ba1 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if poolElevation[arg1 << 240] > 4:
        revert with 0, 'Invalid elev'
    if not poolElevation[arg1 << 240]:
        require ext_code.size(stor11)
        call stor11.0xd81964c3 with:
             gas gas_remaining wei
            args arg1 << 240, arg2, arg3
    else:
        if 4 == poolElevation[arg1 << 240]:
            require ext_code.size(stor13)
            call stor13.0xd81964c3 with:
                 gas gas_remaining wei
                args arg1 << 240, arg2, arg3
        else:
            require ext_code.size(stor12)
            call stor12.0xd81964c3 with:
                 gas gas_remaining wei
                args arg1 << 240, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit PoolUpdated(arg2, arg3 << 240, poolElevation[arg1 << 240], arg1);
}

function deposit(uint16 arg1, uint256 arg2, uint256 arg3, uint8 arg4) payable {
    require calldata.size - 4 >= 128
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if arg1 <= 0:
        revert with 0, 'Pool doesnt exist'
    if arg1 >= stor18.length:
        revert with 0, 'Pool doesnt exist'
    if poolElevation[arg1 << 240]:
        require ext_code.size(stor9)
        staticcall stor9.0x2ae834e0 with:
                gas gas_remaining wei
               args poolElevation[arg1 << 240]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg4 >= ext_call.return_data[31 len 1]:
            revert with 0, 'Invalid totem'
    if poolElevation[arg1 << 240] > 4:
        revert with 0, 'Invalid elev'
    if not poolElevation[arg1 << 240]:
        require ext_code.size(stor11)
        call stor11.0x42c53d2f with:
             gas gas_remaining wei
            args 0, 0, arg2, arg3, arg4, msg.sender
    else:
        if 4 == poolElevation[arg1 << 240]:
            require ext_code.size(stor13)
            call stor13.0x42c53d2f with:
                 gas gas_remaining wei
                args 0, 0, arg2, arg3, arg4, msg.sender
        else:
            require ext_code.size(stor12)
            call stor12.0x42c53d2f with:
                 gas gas_remaining wei
                args 0, 0, arg2, arg3, arg4, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    emit Deposit(ext_call.return_data[0], ext_call.return_data[32], msg.sender, arg1);
    stor1 = 1
}

function userTotem(uint8 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if poolElevation[arg1 << 248] > 4:
        revert with 0, 'Invalid elev'
    if arg1 > 4:
        revert with 0, 'Invalid elev'
    if not arg1:
        require ext_code.size(stor11)
        staticcall stor11.0xfed07f58 with:
                gas gas_remaining wei
               args arg1 << 248, arg2
    else:
        if 4 == arg1:
            require ext_code.size(stor13)
            staticcall stor13.0xfed07f58 with:
                    gas gas_remaining wei
                   args arg1 << 248, arg2
        else:
            require ext_code.size(stor12)
            staticcall stor12.0xfed07f58 with:
                    gas gas_remaining wei
                   args arg1 << 248, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > 4:
        revert with 0, 'Invalid elev'
    if not arg1:
        require ext_code.size(stor11)
        staticcall stor11.selectedTotem(uint8 arg1, address arg2) with:
                gas gas_remaining wei
               args arg1 << 248, arg2
    else:
        if 4 == arg1:
            require ext_code.size(stor13)
            staticcall stor13.selectedTotem(uint8 arg1, address arg2) with:
                    gas gas_remaining wei
                   args arg1 << 248, arg2
        else:
            require ext_code.size(stor12)
            staticcall stor12.selectedTotem(uint8 arg1, address arg2) with:
                    gas gas_remaining wei
                   args arg1 << 248, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0]), uint8(ext_call.return_data[0])
}

function setIsTokenEarningAtElevation(address arg1, uint8 arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    if stor11 != msg.sender:
        if stor12 != msg.sender:
            if stor13 != msg.sender:
                revert with 0, 'Only subCarts'
    require ext_code.size(stor9)
    staticcall stor9.0x9ac143e1 with:
            gas gas_remaining wei
           args tokenBaseAlloc[address(arg1)], arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3:
        if ext_call.return_data[0] + tokenSharedAlloc[address(arg1)].field_0 < tokenSharedAlloc[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > ext_call.return_data[0] + tokenSharedAlloc[address(arg1)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        tokenSharedAlloc[address(arg1)].field_0 += ext_call.return_data[0]
    else:
        if tokenSharedAlloc[address(arg1)].field_0 < tokenSharedAlloc[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0] > tokenSharedAlloc[address(arg1)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        tokenSharedAlloc[address(arg1)].field_0 -= ext_call.return_data[0]
    if arg3:
        if ext_call.return_data[0] + totalSharedAlloc < totalSharedAlloc:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > ext_call.return_data[0] + totalSharedAlloc:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSharedAlloc += ext_call.return_data[0]
    else:
        if totalSharedAlloc < totalSharedAlloc:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0] > totalSharedAlloc:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSharedAlloc -= ext_call.return_data[0]
    stor27[address(arg1)][arg2 << 248] = uint8(arg3)
}

function elevationModulatedAllocation(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    if poolElevation[arg1 << 240] > 4:
        revert with 0, 'Invalid elev'
    if not poolElevation[arg1 << 240]:
        require ext_code.size(stor11)
        staticcall stor11.0x4f7a1aa2 with:
                gas gas_remaining wei
               args arg1
    else:
        if 4 == poolElevation[arg1 << 240]:
            require ext_code.size(stor13)
            staticcall stor13.0x4f7a1aa2 with:
                    gas gas_remaining wei
                   args arg1
        else:
            require ext_code.size(stor12)
            staticcall stor12.0x4f7a1aa2 with:
                    gas gas_remaining wei
                   args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if poolElevation[arg1 << 240] > 4:
        revert with 0, 'Invalid elev'
    if not poolElevation[arg1 << 240]:
        require ext_code.size(stor11)
        staticcall stor11.0xc7d21f36 with:
                gas gas_remaining wei
               args arg1 << 240, 0
    else:
        if 4 == poolElevation[arg1 << 240]:
            require ext_code.size(stor13)
            staticcall stor13.0xc7d21f36 with:
                    gas gas_remaining wei
                   args arg1 << 240, 0
        else:
            require ext_code.size(stor12)
            staticcall stor12.0xc7d21f36 with:
                    gas gas_remaining wei
                   args arg1 << 240, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor9)
    staticcall stor9.0x9ac143e1 with:
            gas gas_remaining wei
           args tokenBaseAlloc[ext_call.return_data[12 len 20]], poolElevation[arg1 << 240]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function add(address arg1, uint8 arg2, bool arg3, uint16 arg4, bool arg5) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if bool(stor22[address(arg1)]) != 1:
        revert with 0, 'Invalid token alloc'
    if arg2 > 3:
        revert with 0, 'Not oasis or elev'
    if tokenElevationPid[address(arg1)][arg2 << 248]:
        revert with 0, 'Duplicated'
    if arg4 > 400:
        revert with 0, 'Invalid fee'
    if arg5:
        require ext_code.size(stor11)
        call stor11.0x630b5ba1 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor12)
        call stor12.0x630b5ba1 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    stor18.length++
    stor18[stor18.length.field_4].field_0 = stor18[stor18.length.field_4].field_0 and !(65535 * 256^(2 * stor18.length % 16)) or 256^(2 * stor18.length % 16) * uint16(stor18.length)
    poolElevation[uint16(stor18.length)] = arg2
    tokenElevationPid[address(arg1)][arg2 << 248] = uint16(stor18.length)
    if arg2 > 4:
        revert with 0, 'Invalid elev'
    if not arg2:
        require ext_code.size(stor11)
        call stor11.0xa5576dd2 with:
             gas gas_remaining wei
            args 0, uint32(stor18.length), arg2 << 248, arg3, arg1, arg4 << 240
    else:
        if 4 == arg2:
            require ext_code.size(stor13)
            call stor13.0xa5576dd2 with:
                 gas gas_remaining wei
                args 0, uint32(stor18.length), arg2 << 248, arg3, arg1, arg4 << 240
        else:
            require ext_code.size(stor12)
            call stor12.0xa5576dd2 with:
                 gas gas_remaining wei
                args 0, uint32(stor18.length), arg2 << 248, arg3, arg1, arg4 << 240
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit PoolCreated(arg2 << 248, arg1, uint16(stor18.length));
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6) payable {
    require calldata.size - 4 >= 192
    if not uint8(stor0.field_168):
        if ext_code.size(this.address):
            if uint8(stor0.field_160):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x54496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if not uint8(stor0.field_168):
            uint8(stor0.field_160) = 1
            uint8(stor0.field_168) = 1
            Mask(88, 0, stor0.field_168) = 0
            stor0.field_256 % 1 = 0
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg2:
        revert with 0, 'Contract is zero'
    if not arg3:
        revert with 0, 'Contract is zero'
    if not arg4:
        revert with 0, 'Contract is zero'
    if not arg5:
        revert with 0, 'Contract is zero'
    if not arg6:
        revert with 0, 'Contract is zero'
    summitAddress = arg1
    stor9 = arg2
    require ext_code.size(arg2)
    call arg2.0x51d20ef1 with:
         gas gas_remaining wei
        args trustedSeederAddAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor10 = arg3
    stor11 = arg4
    stor12 = arg5
    stor13 = arg6
    require ext_code.size(arg5)
    call arg5.0xc4d66de8 with:
         gas gas_remaining wei
        args stor9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor13)
    call stor13.0xc4d66de8 with:
         gas gas_remaining wei
        args stor9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    summitPerSecond = 2254 * 10^14
    referralsSummitPerSecond = 46 * 10^14
    devSummitPerSecond = 2 * 10^16
    if not uint8(stor0.field_168):
        uint8(stor0.field_168) = 0
}

function setTotalSummitPerSecond(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 <= 0:
        revert with 0, 'Invalid emission'
    if arg1 >= 10^18:
        revert with 0, 'Invalid emission'
    if not arg1:
        summitPerSecond = 0
    else:
        if 92 * arg1 / arg1 != 92:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not 92 * arg1 / 100:
            summitPerSecond = 0
        else:
            if 98 * 92 * arg1 / 100 / 92 * arg1 / 100 != 98:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            summitPerSecond = 98 * 92 * arg1 / 100 / 100
    if not arg1:
        referralsSummitPerSecond = 0
    else:
        if 92 * arg1 / arg1 != 92:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not 92 * arg1 / 100:
            referralsSummitPerSecond = 0
        else:
            if 2 * 92 * arg1 / 100 / 92 * arg1 / 100 != 2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            referralsSummitPerSecond = 2 * 92 * arg1 / 100 / 100
    if not arg1:
        devSummitPerSecond = 0
    else:
        if 8 * arg1 / arg1 != 8:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        devSummitPerSecond = 8 * arg1 / 100
}

function crossCompound(uint16 arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if arg1 <= 0:
        revert with 0, 'Pool doesnt exist'
    if arg1 >= stor18.length:
        revert with 0, 'Pool doesnt exist'
    if poolElevation[arg1 << 240] > 3:
        revert with 0, 'Not oasis or elev'
    if poolElevation[arg1 << 240] > 4:
        revert with 0, 'Invalid elev'
    if not poolElevation[arg1 << 240]:
        require ext_code.size(stor11)
        staticcall stor11.0xc7d21f36 with:
                gas gas_remaining wei
               args arg1 << 240, 0
    else:
        if 4 == poolElevation[arg1 << 240]:
            require ext_code.size(stor13)
            staticcall stor13.0xc7d21f36 with:
                    gas gas_remaining wei
                   args arg1 << 240, 0
        else:
            require ext_code.size(stor12)
            staticcall stor12.0xc7d21f36 with:
                    gas gas_remaining wei
                   args arg1 << 240, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == summitAddress:
        if poolElevation[arg1 << 240] > 4:
            revert with 0, 'Invalid elev'
        if not poolElevation[arg1 << 240]:
            require ext_code.size(stor11)
            call stor11.0x9f390c4a with:
                 gas gas_remaining wei
                args 0, 0, arg1 << 240, arg2 << 248, msg.sender
        else:
            if 4 == poolElevation[arg1 << 240]:
                require ext_code.size(stor13)
                call stor13.0x9f390c4a with:
                     gas gas_remaining wei
                    args 0, 0, arg1 << 240, arg2 << 248, msg.sender
            else:
                require ext_code.size(stor12)
                call stor12.0x9f390c4a with:
                     gas gas_remaining wei
                    args 0, 0, arg1 << 240, arg2 << 248, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit CrossCompound(ext_call.return_data[0], msg.sender, arg1, arg1);
    else:
        if not tokenElevationPid[stor2][stor19[arg1 << 240]]:
            revert with 0, 'No cross compound target found'
        if poolElevation[stor26[stor2][poolElevation[arg1 << 240]]] > 4:
            revert with 0, 'Invalid elev'
        if not poolElevation[stor26[stor2][poolElevation[arg1 << 240]]]:
            require ext_code.size(stor11)
            staticcall stor11.0xc7d21f36 with:
                    gas gas_remaining wei
                   args tokenElevationPid[stor2][stor19[arg1 << 240]], 0
        else:
            if 4 == poolElevation[stor26[stor2][poolElevation[arg1 << 240]]]:
                require ext_code.size(stor13)
                staticcall stor13.0xc7d21f36 with:
                        gas gas_remaining wei
                       args tokenElevationPid[stor2][stor19[arg1 << 240]], 0
            else:
                require ext_code.size(stor12)
                staticcall stor12.0xc7d21f36 with:
                        gas gas_remaining wei
                       args tokenElevationPid[stor2][stor19[arg1 << 240]], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != summitAddress:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x7343726f737320636f6d706f756e6420706f6f6c206d7573742062652053554d4d49,
                        mem[198 len 30]
        if poolElevation[arg1 << 240] > 4:
            revert with 0, 'Invalid elev'
        if not poolElevation[arg1 << 240]:
            require ext_code.size(stor11)
            call stor11.0x9f390c4a with:
                 gas gas_remaining wei
                args 0, 0, tokenElevationPid[stor2][stor19[arg1 << 240]], arg2 << 248, msg.sender
        else:
            if 4 == poolElevation[arg1 << 240]:
                require ext_code.size(stor13)
                call stor13.0x9f390c4a with:
                     gas gas_remaining wei
                    args 0, 0, tokenElevationPid[stor2][stor19[arg1 << 240]], arg2 << 248, msg.sender
            else:
                require ext_code.size(stor12)
                call stor12.0x9f390c4a with:
                     gas gas_remaining wei
                    args 0, 0, tokenElevationPid[stor2][stor19[arg1 << 240]], arg2 << 248, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit CrossCompound(ext_call.return_data[0], msg.sender, arg1, tokenElevationPid[stor2][stor19[arg1 << 240]]);
    stor1 = 1
}

function setTokenPassthroughStrategy(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg2:
        revert with 0, 'Passthrough strategy missing'
    require ext_code.size(arg2)
    staticcall arg2.token() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x72546f6b656e20646f65736e74206d6174636820706173737468726f7567682073747261746567,
                    mem[203 len 25]
    if not stor3:
        if tokenPassthroughStrategy[address(arg1)]:
            require ext_code.size(tokenPassthroughStrategy[address(arg1)])
            call tokenPassthroughStrategy[address(arg1)].retire(address arg1, address arg2) with:
                 gas gas_remaining wei
                args expedAddAddress, devAddAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            tokenPassthroughStrategy[address(arg1)] = 0
        require ext_code.size(arg2)
        staticcall arg2.token() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg2)
        call arg2.deposit(address arg1, address arg2) with:
             gas gas_remaining wei
            args expedAddAddress, devAddAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        tokenPassthroughStrategy[address(arg1)] = arg2
        sub_38deefb0[address(arg1)].field_0 = 0
        sub_38deefb0[address(arg1)].field_256 = 0
        emit PassthroughStrategySet(arg1, arg2);
    if not sub_38deefb0[address(arg1)].field_256:
        sub_38deefb0[address(arg1)].field_0 = arg2
        sub_38deefb0[address(arg1)].field_256 = block.timestamp + (72 * 24 * 3600)
        emit 0x42fddc04: (block.timestamp + (72 * 24 * 3600)), arg1, arg2
    else:
        if sub_38deefb0[address(arg1)].field_0 != arg2:
            sub_38deefb0[address(arg1)].field_0 = arg2
            sub_38deefb0[address(arg1)].field_256 = block.timestamp + (72 * 24 * 3600)
            emit 0x42fddc04: (block.timestamp + (72 * 24 * 3600)), arg1, arg2
        else:
            if block.timestamp < sub_38deefb0[address(arg1)].field_256:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0x7950726f706f73616c2065786973747320627574206e6f7420796574206d61747572,
                            mem[198 len 30]
            if tokenPassthroughStrategy[address(arg1)]:
                require ext_code.size(tokenPassthroughStrategy[address(arg1)])
                call tokenPassthroughStrategy[address(arg1)].retire(address arg1, address arg2) with:
                     gas gas_remaining wei
                    args expedAddAddress, devAddAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                tokenPassthroughStrategy[address(arg1)] = 0
            require ext_code.size(sub_38deefb0[address(arg1)].field_0)
            staticcall sub_38deefb0[address(arg1)].field_0.token() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_38deefb0[address(arg1)].field_0, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_38deefb0[address(arg1)].field_0)
            call sub_38deefb0[address(arg1)].field_0.deposit(address arg1, address arg2) with:
                 gas gas_remaining wei
                args expedAddAddress, devAddAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            tokenPassthroughStrategy[address(arg1)] = sub_38deefb0[address(arg1)].field_0
            sub_38deefb0[address(arg1)].field_0 = 0
            sub_38deefb0[address(arg1)].field_256 = 0
            emit PassthroughStrategySet(arg1, sub_38deefb0[address(arg1)].field_0);
}

function setSummitDistributionProfile(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 >= 10000:
        revert with 0, 'Invalid Distribution Profile'
    if arg2 >= 10000:
        revert with 0, 'Invalid Distribution Profile'
    if not arg2:
        if 0 >= arg1:
            revert with 0, 'Invalid Distribution Profile'
    else:
        if 3 * arg2 / arg2 != 3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 3 * arg2 >= arg1:
            revert with 0, 'Invalid Distribution Profile'
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if devSummitPerSecond + summitPerSecond < summitPerSecond:
        revert with 0, 'SafeMath: addition overflow'
    if referralsSummitPerSecond < 0:
        revert with 0, 'SafeMath: addition overflow'
    if not referralsSummitPerSecond + devSummitPerSecond + summitPerSecond:
        if arg2 + arg1 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg2 + arg1
        if not 0 / arg2 + arg1:
            summitPerSecond = 0
        else:
            if 98 * 0 / arg2 + arg1 / 0 / arg2 + arg1 != 98:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            summitPerSecond = 98 * 0 / arg2 + arg1 / 100
    else:
        if (referralsSummitPerSecond * arg1) + (devSummitPerSecond * arg1) + (summitPerSecond * arg1) / referralsSummitPerSecond + devSummitPerSecond + summitPerSecond != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg2 + arg1 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg2 + arg1
        if not (referralsSummitPerSecond * arg1) + (devSummitPerSecond * arg1) + (summitPerSecond * arg1) / arg2 + arg1:
            summitPerSecond = 0
        else:
            if 98 * (referralsSummitPerSecond * arg1) + (devSummitPerSecond * arg1) + (summitPerSecond * arg1) / arg2 + arg1 / (referralsSummitPerSecond * arg1) + (devSummitPerSecond * arg1) + (summitPerSecond * arg1) / arg2 + arg1 != 98:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            summitPerSecond = 98 * (referralsSummitPerSecond * arg1) + (devSummitPerSecond * arg1) + (summitPerSecond * arg1) / arg2 + arg1 / 100
    if not referralsSummitPerSecond + devSummitPerSecond + summitPerSecond:
        if arg2 + arg1 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg2 + arg1
        if not 0 / arg2 + arg1:
            referralsSummitPerSecond = 0
        else:
            if 2 * 0 / arg2 + arg1 / 0 / arg2 + arg1 != 2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            referralsSummitPerSecond = 2 * 0 / arg2 + arg1 / 100
    else:
        if (referralsSummitPerSecond * arg1) + (devSummitPerSecond * arg1) + (summitPerSecond * arg1) / referralsSummitPerSecond + devSummitPerSecond + summitPerSecond != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg2 + arg1 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg2 + arg1
        if not (referralsSummitPerSecond * arg1) + (devSummitPerSecond * arg1) + (summitPerSecond * arg1) / arg2 + arg1:
            referralsSummitPerSecond = 0
        else:
            if 2 * (referralsSummitPerSecond * arg1) + (devSummitPerSecond * arg1) + (summitPerSecond * arg1) / arg2 + arg1 / (referralsSummitPerSecond * arg1) + (devSummitPerSecond * arg1) + (summitPerSecond * arg1) / arg2 + arg1 != 2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            referralsSummitPerSecond = 2 * (referralsSummitPerSecond * arg1) + (devSummitPerSecond * arg1) + (summitPerSecond * arg1) / arg2 + arg1 / 100
    if not referralsSummitPerSecond + devSummitPerSecond + summitPerSecond:
        if arg2 + arg1 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg2 + arg1
        devSummitPerSecond = 0 / arg2 + arg1
    else:
        if (referralsSummitPerSecond * arg2) + (devSummitPerSecond * arg2) + (summitPerSecond * arg2) / referralsSummitPerSecond + devSummitPerSecond + summitPerSecond != arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg2 + arg1 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg2 + arg1
        devSummitPerSecond = (referralsSummitPerSecond * arg2) + (devSummitPerSecond * arg2) + (summitPerSecond * arg2) / arg2 + arg1
}

function setTokenSharedAlloc(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if bool(stor22[address(arg1)]) != 1:
        revert with 0, 'Invalid token alloc'
    if arg2 > 10000:
        revert with 0, 'Allocation must be <= 100X'
    if not stor27[address(arg1)][3]:
        if stor27[address(arg1)][2]:
            if stor27[address(arg1)][1]:
                if stor27[address(arg1)][0]:
                    if not arg2:
                        if tokenSharedAlloc[address(arg1)].field_0 > totalSharedAlloc:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSharedAlloc -= tokenSharedAlloc[address(arg1)].field_0
                        tokenSharedAlloc[address(arg1)].field_0 = 0
                    else:
                        if 79 * arg2 / arg2 != 79:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if tokenSharedAlloc[address(arg1)].field_0 > totalSharedAlloc:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 79 * arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSharedAlloc = (79 * arg2) + totalSharedAlloc - tokenSharedAlloc[address(arg1)].field_0
                        tokenSharedAlloc[address(arg1)].field_0 = 79 * arg2
                else:
                    if not arg2:
                        if tokenSharedAlloc[address(arg1)].field_0 > totalSharedAlloc:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSharedAlloc -= tokenSharedAlloc[address(arg1)].field_0
                        tokenSharedAlloc[address(arg1)].field_0 = 0
                    else:
                        if 235 * arg2 / arg2 != 235:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if tokenSharedAlloc[address(arg1)].field_0 > totalSharedAlloc:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 235 * arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSharedAlloc = (235 * arg2) + totalSharedAlloc - tokenSharedAlloc[address(arg1)].field_0
                        tokenSharedAlloc[address(arg1)].field_0 = 235 * arg2
            else:
                if stor27[address(arg1)][0]:
                    if not arg2:
                        if tokenSharedAlloc[address(arg1)].field_0 > totalSharedAlloc:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSharedAlloc -= tokenSharedAlloc[address(arg1)].field_0
                        tokenSharedAlloc[address(arg1)].field_0 = 0
                    else:
                        if 225 * arg2 / arg2 != 225:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if tokenSharedAlloc[address(arg1)].field_0 > totalSharedAlloc:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 225 * arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSharedAlloc = (225 * arg2) + totalSharedAlloc - tokenSharedAlloc[address(arg1)].field_0
                        tokenSharedAlloc[address(arg1)].field_0 = 225 * arg2
                else:
                    if not arg2:
                        if tokenSharedAlloc[address(arg1)].field_0 > totalSharedAlloc:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSharedAlloc -= tokenSharedAlloc[address(arg1)].field_0
                        tokenSharedAlloc[address(arg1)].field_0 = 0
                    else:
                        if 125 * arg2 / arg2 != 125:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if tokenSharedAlloc[address(arg1)].field_0 > totalSharedAlloc:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 125 * arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSharedAlloc = (125 * arg2) + totalSharedAlloc - tokenSharedAlloc[address(arg1)].field_0
                        tokenSharedAlloc[address(arg1)].field_0 = 125 * arg2
        else:
            if stor27[address(arg1)][1]:
                if stor27[address(arg1)][0]:
                    if not arg2:
                        if tokenSharedAlloc[address(arg1)].field_0 > totalSharedAlloc:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSharedAlloc -= tokenSharedAlloc[address(arg1)].field_0
                        tokenSharedAlloc[address(arg1)].field_0 = 0
                    else:
                        if 210 * arg2 / arg2 != 210:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if tokenSharedAlloc[address(arg1)].field_0 > totalSharedAlloc:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 210 * arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSharedAlloc = (210 * arg2) + totalSharedAlloc - tokenSharedAlloc[address(arg1)].field_0
                        tokenSharedAlloc[address(arg1)].field_0 = 210 * arg2
                else:
                    if not arg2:
                        if tokenSharedAlloc[address(arg1)].field_0 > totalSharedAlloc:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSharedAlloc -= tokenSharedAlloc[address(arg1)].field_0
                        tokenSharedAlloc[address(arg1)].field_0 = 0
                    else:
                        if 110 * arg2 / arg2 != 110:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if tokenSharedAlloc[address(arg1)].field_0 > totalSharedAlloc:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 110 * arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSharedAlloc = (110 * arg2) + totalSharedAlloc - tokenSharedAlloc[address(arg1)].field_0
                        tokenSharedAlloc[address(arg1)].field_0 = 110 * arg2
            else:
                if not stor27[address(arg1)][0]:
                    if arg2:
                        if 0 / arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                    if tokenSharedAlloc[address(arg1)].field_0 > totalSharedAlloc:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSharedAlloc -= tokenSharedAlloc[address(arg1)].field_0
                    tokenSharedAlloc[address(arg1)].field_0 = 0
                else:
                    if not arg2:
                        if tokenSharedAlloc[address(arg1)].field_0 > totalSharedAlloc:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSharedAlloc -= tokenSharedAlloc[address(arg1)].field_0
                        tokenSharedAlloc[address(arg1)].field_0 = 0
                    else:
                        if 100 * arg2 / arg2 != 100:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if tokenSharedAlloc[address(arg1)].field_0 > totalSharedAlloc:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 100 * arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSharedAlloc = (100 * arg2) + totalSharedAlloc - tokenSharedAlloc[address(arg1)].field_0
                        tokenSharedAlloc[address(arg1)].field_0 = 100 * arg2
    else:
        if stor27[address(arg1)][2]:
            if stor27[address(arg1)][1]:
                if stor27[address(arg1)][0]:
                    if not arg2:
                        if tokenSharedAlloc[address(arg1)].field_0 > totalSharedAlloc:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSharedAlloc -= tokenSharedAlloc[address(arg1)].field_0
                        tokenSharedAlloc[address(arg1)].field_0 = 0
                    else:
                        if 229 * arg2 / arg2 != 229:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if tokenSharedAlloc[address(arg1)].field_0 > totalSharedAlloc:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 229 * arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSharedAlloc = (229 * arg2) + totalSharedAlloc - tokenSharedAlloc[address(arg1)].field_0
                        tokenSharedAlloc[address(arg1)].field_0 = 229 * arg2
                else:
                    if not arg2:
                        if tokenSharedAlloc[address(arg1)].field_0 > totalSharedAlloc:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSharedAlloc -= tokenSharedAlloc[address(arg1)].field_0
                        tokenSharedAlloc[address(arg1)].field_0 = 0
                    else:
                        if 129 * arg2 / arg2 != 129:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if tokenSharedAlloc[address(arg1)].field_0 > totalSharedAlloc:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 129 * arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSharedAlloc = (129 * arg2) + totalSharedAlloc - tokenSharedAlloc[address(arg1)].field_0
                        tokenSharedAlloc[address(arg1)].field_0 = 129 * arg2
            else:
                if stor27[address(arg1)][0]:
                    if not arg2:
                        if tokenSharedAlloc[address(arg1)].field_0 > totalSharedAlloc:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSharedAlloc -= tokenSharedAlloc[address(arg1)].field_0
                        tokenSharedAlloc[address(arg1)].field_0 = 0
                    else:
                        if 119 * arg2 / arg2 != 119:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if tokenSharedAlloc[address(arg1)].field_0 > totalSharedAlloc:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 119 * arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSharedAlloc = (119 * arg2) + totalSharedAlloc - tokenSharedAlloc[address(arg1)].field_0
                        tokenSharedAlloc[address(arg1)].field_0 = 119 * arg2
                else:
                    if not arg2:
                        if tokenSharedAlloc[address(arg1)].field_0 > totalSharedAlloc:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSharedAlloc -= tokenSharedAlloc[address(arg1)].field_0
                        tokenSharedAlloc[address(arg1)].field_0 = 0
                    else:
                        if 19 * arg2 / arg2 != 19:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if tokenSharedAlloc[address(arg1)].field_0 > totalSharedAlloc:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 19 * arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSharedAlloc = (19 * arg2) + totalSharedAlloc - tokenSharedAlloc[address(arg1)].field_0
                        tokenSharedAlloc[address(arg1)].field_0 = 19 * arg2
        else:
            if not stor27[address(arg1)][1]:
                if stor27[address(arg1)][0]:
                    if not arg2:
                        if tokenSharedAlloc[address(arg1)].field_0 > totalSharedAlloc:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSharedAlloc -= tokenSharedAlloc[address(arg1)].field_0
                        tokenSharedAlloc[address(arg1)].field_0 = 0
                    else:
                        if 250 * arg2 / arg2 != 250:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if tokenSharedAlloc[address(arg1)].field_0 > totalSharedAlloc:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 250 * arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSharedAlloc = (250 * arg2) + totalSharedAlloc - tokenSharedAlloc[address(arg1)].field_0
                        tokenSharedAlloc[address(arg1)].field_0 = 250 * arg2
                else:
                    if not arg2:
                        if tokenSharedAlloc[address(arg1)].field_0 > totalSharedAlloc:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSharedAlloc -= tokenSharedAlloc[address(arg1)].field_0
                        tokenSharedAlloc[address(arg1)].field_0 = 0
                    else:
                        if 150 * arg2 / arg2 != 150:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if tokenSharedAlloc[address(arg1)].field_0 > totalSharedAlloc:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 150 * arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSharedAlloc = (150 * arg2) + totalSharedAlloc - tokenSharedAlloc[address(arg1)].field_0
                        tokenSharedAlloc[address(arg1)].field_0 = 150 * arg2
            else:
                if stor27[address(arg1)][0]:
                    if not arg2:
                        if tokenSharedAlloc[address(arg1)].field_0 > totalSharedAlloc:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSharedAlloc -= tokenSharedAlloc[address(arg1)].field_0
                        tokenSharedAlloc[address(arg1)].field_0 = 0
                    else:
                        if 104 * arg2 / arg2 != 104:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if tokenSharedAlloc[address(arg1)].field_0 > totalSharedAlloc:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 104 * arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSharedAlloc = (104 * arg2) + totalSharedAlloc - tokenSharedAlloc[address(arg1)].field_0
                        tokenSharedAlloc[address(arg1)].field_0 = 104 * arg2
                else:
                    if not arg2:
                        if tokenSharedAlloc[address(arg1)].field_0 > totalSharedAlloc:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSharedAlloc -= tokenSharedAlloc[address(arg1)].field_0
                        tokenSharedAlloc[address(arg1)].field_0 = 0
                    else:
                        if 4 * arg2 / arg2 != 4:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if tokenSharedAlloc[address(arg1)].field_0 > totalSharedAlloc:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 4 * arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSharedAlloc = (4 * arg2) + totalSharedAlloc - tokenSharedAlloc[address(arg1)].field_0
                        tokenSharedAlloc[address(arg1)].field_0 = 0
                        tokenSharedAlloc[address(arg1)].field_2 = Mask(254, 0, arg2)
    tokenBaseAlloc[address(arg1)] = arg2
    emit TokenAllocUpdated(arg2, arg1);
}



}
