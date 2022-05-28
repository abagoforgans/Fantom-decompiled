contract main {




// =====================  Runtime code  =====================


#
#  - sub_3f4af6d0(?)
#  - poolSummitEmission(uint256 arg1, address arg2, uint8 arg3)
#  - depositTokenManagement(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5)
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
address stor14;
address stor15;
address stor16;
address stor17;
address stor18;
uint256 totalAllocPoint;
uint256 stor2;
mapping of uint8 stor20;
mapping of uint256 sub_ce759187;
mapping of uint256 sub_d3be1f65;
mapping of uint8 tokenElevationPid;
mapping of uint8 stor24;
array of uint256 stor25;
mapping of uint8 sub_61c952b8;
mapping of uint8 stor27;
uint8 sub_e352998a; offset 160
address summitAddress;
uint256 sub_f2710c89;
uint256 summitPerSecond;
uint256 devSummitPerSecond;
array of uint256 stor67072331549493647622825787457569556318728415786901242217649037894484240406165;
uint256 referralsSummitPerSecond;
uint32 stor8;
address devAddAddress;
uint256 stor8;
uint32 stor9;
address expedAddAddress;

function totalAllocPoint() payable {
    return totalAllocPoint
}

function tokenAllocExistence(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor20[arg1])
}

function expedAdd() payable {
    return address(expedAddAddress)
}

function devAdd() payable {
    return address(devAddAddress)
}

function sub_61c952b8(?) payable {
    require calldata.size - 4 >= 32
    return sub_61c952b8[arg1]
}

function poolIds(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor25.length
    return poolIds[uint8(arg1)]
}

function devSummitPerSecond() payable {
    return devSummitPerSecond
}

function poolsCount() payable {
    return stor25.length
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

function tokenElevationPid(address arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    return tokenElevationPid[arg1][arg2]
}

function sub_ce759187(?) payable {
    require calldata.size - 4 >= 32
    return sub_ce759187[arg1]
}

function sub_d3be1f65(?) payable {
    require calldata.size - 4 >= 32
    return sub_d3be1f65[arg1]
}

function sub_e352998a(?) payable {
    return bool(sub_e352998a)
}

function referralsSummitPerSecond() payable {
    return referralsSummitPerSecond
}

function sub_f2710c89(?) payable {
    return sub_f2710c89
}

function sub_faab07b1(?) payable {
    require calldata.size - 4 >= 64
    return bool(stor27[arg1][arg2])
}

function sub_fac2135a(?) payable {
    require calldata.size - 4 >= 64
    return bool(stor24[arg1][arg2])
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

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    return (arg2 - arg1)
}

function setDevAdd(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(devAddAddress) != msg.sender:
        revert with 0, 'Forbidden'
    address(devAddAddress) = arg1
    emit SetDevAddress(msg.sender, arg1);
}

function setExpedAdd(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(expedAddAddress) != msg.sender:
        revert with 0, 'Forbidden'
    address(expedAddAddress) = arg1
    emit SetExpedAdd(msg.sender, arg1);
}

function getKeywordRound() payable {
    require ext_code.size(stor12)
    staticcall stor12.0x55fd7963 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getReferralBurnTime() payable {
    require ext_code.size(stor12)
    staticcall stor12.0xca48eb28 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function elevationRoundEndTime(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 < 1:
        revert with 0, 'Not elev or exped'
    if arg1 > 4:
        revert with 0, 'Not elev or exped'
    require ext_code.size(stor12)
    staticcall stor12.0xced2684a with:
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

function massUpdatePools() payable {
    require ext_code.size(stor16)
    call stor16.0x630b5ba1 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor17)
    call stor17.0x630b5ba1 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor18)
    call stor18.0x630b5ba1 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5a0af1d4(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor20[address(arg1)]:
        revert with 0, 'Duplicated token alloc'
    stor20[address(arg1)] = 1
    sub_ce759187[address(arg1)] = arg2
    sub_d3be1f65[address(arg1)] = 0
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor10, 0x446c3b15f9926687d2c40534fdb564000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit TokenAllocCreated(arg2, arg1);
}

function sub_ce45d3ab(?) payable {
    require calldata.size - 4 >= 96
    if stor16 != msg.sender:
        if stor17 != msg.sender:
            if stor18 != msg.sender:
                revert with 0, 'Only subCarts'
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor10, 0x446c3b15f9926687d2c40534fdb564000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3:
        require ext_code.size(stor10)
        call stor10.0xe2bbb158 with:
             gas gas_remaining wei
            args arg1, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_7dcdf186(?) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor27[address(arg1)][4]:
        revert with 0, 'Duplicated'
    stor25.length++
    stor9449[stor25.length.field_5] = stor9449[stor25.length.field_5] and !(255 * 256^stor25.length % 32) or 256^stor25.length % 32 * uint8(stor25.length)
    stor27[address(arg1)][4] = 1
    sub_61c952b8[uint8(stor25.length)] = 4
    require ext_code.size(stor18)
    call stor18.0x6ccfed7d with:
         gas gas_remaining wei
        args 0, uint32(stor25.length), address(arg1), arg2, arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit ExpeditionCreated(address(arg1), arg2, arg3, uint8(stor25.length));
}

function isLive(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_61c952b8[arg1 << 248] > 4:
        revert with 0, 'Invalid elev'
    if not sub_61c952b8[arg1 << 248]:
        require ext_code.size(stor16)
        staticcall stor16.0x5b6d6973 with:
                gas gas_remaining wei
               args arg1
    else:
        if 4 == sub_61c952b8[arg1 << 248]:
            require ext_code.size(stor18)
            staticcall stor18.0x5b6d6973 with:
                    gas gas_remaining wei
                   args arg1
        else:
            require ext_code.size(stor17)
            staticcall stor17.0x5b6d6973 with:
                    gas gas_remaining wei
                   args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function lpToken(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_61c952b8[arg1 << 248] > 4:
        revert with 0, 'Invalid elev'
    if not sub_61c952b8[arg1 << 248]:
        require ext_code.size(stor16)
        staticcall stor16.0x1f2363ac with:
                gas gas_remaining wei
               args arg1
    else:
        if 4 == sub_61c952b8[arg1 << 248]:
            require ext_code.size(stor18)
            staticcall stor18.0x1f2363ac with:
                    gas gas_remaining wei
                   args arg1
        else:
            require ext_code.size(stor17)
            staticcall stor17.0x1f2363ac with:
                    gas gas_remaining wei
                   args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_afd63673(?) payable {
    require calldata.size - 4 >= 64
    if stor16 != msg.sender:
        if stor17 != msg.sender:
            if stor18 != msg.sender:
                revert with 0, 'Only subCarts'
    require ext_code.size(stor12)
    staticcall stor12.getElevationModifiedAllocPoint(uint256 arg1, uint8 arg2) with:
            gas gas_remaining wei
           args sub_ce759187[address(arg1)], arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > sub_d3be1f65[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_d3be1f65[address(arg1)] -= ext_call.return_data[0]
    if ext_call.return_data[0] > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    totalAllocPoint -= ext_call.return_data[0]
    stor24[address(arg1)][arg2 << 248] = 0
}

function sub_a693e013(?) payable {
    require calldata.size - 4 >= 64
    if stor16 != msg.sender:
        if stor17 != msg.sender:
            if stor18 != msg.sender:
                revert with 0, 'Only subCarts'
    require ext_code.size(stor12)
    staticcall stor12.getElevationModifiedAllocPoint(uint256 arg1, uint8 arg2) with:
            gas gas_remaining wei
           args sub_ce759187[address(arg1)], arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + sub_d3be1f65[address(arg1)] < sub_d3be1f65[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    sub_d3be1f65[address(arg1)] += ext_call.return_data[0]
    if ext_call.return_data[0] + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += ext_call.return_data[0]
    stor24[address(arg1)][arg2 << 248] = 1
}

function lpSupply(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'Pool doesnt exist'
    if arg1 >= stor25.length:
        revert with 0, 'Pool doesnt exist'
    if sub_61c952b8[arg1 << 248] > 4:
        revert with 0, 'Invalid elev'
    if not sub_61c952b8[arg1 << 248]:
        require ext_code.size(stor16)
        staticcall stor16.0xcdf21676 with:
                gas gas_remaining wei
               args arg1
    else:
        if 4 == sub_61c952b8[arg1 << 248]:
            require ext_code.size(stor18)
            staticcall stor18.0xcdf21676 with:
                    gas gas_remaining wei
                   args arg1
        else:
            require ext_code.size(stor17)
            staticcall stor17.0xcdf21676 with:
                    gas gas_remaining wei
                   args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function depositFee(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'Pool doesnt exist'
    if arg1 >= stor25.length:
        revert with 0, 'Pool doesnt exist'
    if sub_61c952b8[arg1 << 248] > 4:
        revert with 0, 'Invalid elev'
    if not sub_61c952b8[arg1 << 248]:
        require ext_code.size(stor16)
        staticcall stor16.0x1f038ae0 with:
                gas gas_remaining wei
               args arg1
    else:
        if 4 == sub_61c952b8[arg1 << 248]:
            require ext_code.size(stor18)
            staticcall stor18.0x1f038ae0 with:
                    gas gas_remaining wei
                   args arg1
        else:
            require ext_code.size(stor17)
            staticcall stor17.0x1f038ae0 with:
                    gas gas_remaining wei
                   args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function hypotheticalRewards(uint8 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 <= 0:
        revert with 0, 'Pool doesnt exist'
    if arg1 >= stor25.length:
        revert with 0, 'Pool doesnt exist'
    if sub_61c952b8[arg1 << 248] > 4:
        revert with 0, 'Invalid elev'
    if sub_61c952b8[arg1 << 248] > 4:
        revert with 0, 'Invalid elev'
    if not sub_61c952b8[arg1 << 248]:
        require ext_code.size(stor16)
        staticcall stor16.0x66af0ca3 with:
                gas gas_remaining wei
               args arg1 << 248, arg2
    else:
        if 4 == sub_61c952b8[arg1 << 248]:
            require ext_code.size(stor18)
            staticcall stor18.0x66af0ca3 with:
                    gas gas_remaining wei
                   args arg1 << 248, arg2
        else:
            require ext_code.size(stor17)
            staticcall stor17.0x66af0ca3 with:
                    gas gas_remaining wei
                   args arg1 << 248, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[32]
}

function rewards(uint8 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 <= 0:
        revert with 0, 'Pool doesnt exist'
    if arg1 >= stor25.length:
        revert with 0, 'Pool doesnt exist'
    if sub_61c952b8[arg1 << 248] > 4:
        revert with 0, 'Invalid elev'
    if sub_61c952b8[arg1 << 248] > 4:
        revert with 0, 'Invalid elev'
    if not sub_61c952b8[arg1 << 248]:
        require ext_code.size(stor16)
        staticcall stor16.0xb9df51a7 with:
                gas gas_remaining wei
               args arg1 << 248, arg2
    else:
        if 4 == sub_61c952b8[arg1 << 248]:
            require ext_code.size(stor18)
            staticcall stor18.0xb9df51a7 with:
                    gas gas_remaining wei
                   args arg1 << 248, arg2
        else:
            require ext_code.size(stor17)
            staticcall stor17.0xb9df51a7 with:
                    gas gas_remaining wei
                   args arg1 << 248, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
}

function enable(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if sub_e352998a:
        revert with 0, 'Already enabled'
    summitAddress = arg1
    sub_e352998a = 1
    sub_f2710c89 = block.timestamp
    require ext_code.size(stor12)
    call stor12.enable(uint256 arg1) with:
         gas gas_remaining wei
        args block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor14)
    call stor14.0x5bfa1b68 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor16)
    call stor16.enable(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args sub_f2710c89, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor18)
    call stor18.enable(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args sub_f2710c89, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function set(uint8 arg1, bool arg2, uint16 arg3, bool arg4) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if sub_61c952b8[arg1 << 248] > 3:
        revert with 0, 'Not oasis or elev'
    if arg1 <= 0:
        revert with 0, 'Pool doesnt exist'
    if arg1 >= stor25.length:
        revert with 0, 'Pool doesnt exist'
    if arg3 > 400:
        revert with 0, 'Invalid deposit fee'
    if sub_61c952b8[arg1 << 248] > 4:
        revert with 0, 'Invalid elev'
    if not sub_61c952b8[arg1 << 248]:
        require ext_code.size(stor16)
        call stor16.0xbbab4d78 with:
             gas gas_remaining wei
            args 0, 0, arg2, arg3 << 240, arg4
    else:
        if 4 == sub_61c952b8[arg1 << 248]:
            require ext_code.size(stor18)
            call stor18.0xbbab4d78 with:
                 gas gas_remaining wei
                args 0, 0, arg2, arg3 << 240, arg4
        else:
            require ext_code.size(stor17)
            call stor17.0xbbab4d78 with:
                 gas gas_remaining wei
                args 0, 0, arg2, arg3 << 240, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit PoolUpdated(arg2, arg3 << 240, sub_61c952b8[arg1 << 248], arg1);
}

function emergencyWithdraw(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if arg1 <= 0:
        revert with 0, 'Pool doesnt exist'
    if arg1 >= stor25.length:
        revert with 0, 'Pool doesnt exist'
    if sub_61c952b8[arg1 << 248] > 4:
        revert with 0, 'Invalid elev'
    if not sub_61c952b8[arg1 << 248]:
        require ext_code.size(stor16)
        call stor16.emergencyWithdraw(uint8 arg1, address arg2) with:
             gas gas_remaining wei
            args arg1 << 248, msg.sender
    else:
        if 4 == sub_61c952b8[arg1 << 248]:
            require ext_code.size(stor18)
            call stor18.emergencyWithdraw(uint8 arg1, address arg2) with:
                 gas gas_remaining wei
                args arg1 << 248, msg.sender
        else:
            require ext_code.size(stor17)
            call stor17.emergencyWithdraw(uint8 arg1, address arg2) with:
                 gas gas_remaining wei
                args arg1 << 248, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit EmergencyWithdraw(ext_call.return_data[0], msg.sender, arg1);
    stor1 = 1
}

function withdraw(uint8 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if arg1 <= 0:
        revert with 0, 'Pool doesnt exist'
    if arg1 >= stor25.length:
        revert with 0, 'Pool doesnt exist'
    if sub_61c952b8[arg1 << 248] > 4:
        revert with 0, 'Invalid elev'
    if not sub_61c952b8[arg1 << 248]:
        require ext_code.size(stor16)
        call stor16.withdraw(uint8 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args arg1 << 248, arg2, msg.sender
    else:
        if 4 == sub_61c952b8[arg1 << 248]:
            require ext_code.size(stor18)
            call stor18.withdraw(uint8 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args arg1 << 248, arg2, msg.sender
        else:
            require ext_code.size(stor17)
            call stor17.withdraw(uint8 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args arg1 << 248, arg2, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Withdraw(arg2, msg.sender, arg1);
    stor1 = 1
}

function redeemRewards(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor16 != msg.sender:
        if stor17 != msg.sender:
            if stor18 != msg.sender:
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
    require ext_code.size(stor14)
    call stor14.addReferralRewardsIfNecessary(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit RedeemRewards(arg2, arg1);
}

function setTotalSummitPerSecond(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        summitPerSecond = 0
    else:
        if 900 * arg1 / arg1 != 900:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        summitPerSecond = 900 * arg1 / 1000
    if not arg1:
        devSummitPerSecond = 0
    else:
        if 80 * arg1 / arg1 != 80:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        devSummitPerSecond = 80 * arg1 / 1000
    if not arg1:
        referralsSummitPerSecond = 0
    else:
        if 20 * arg1 / arg1 != 20:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        referralsSummitPerSecond = 20 * arg1 / 1000
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
    require ext_code.size(stor12)
    staticcall stor12.0xc416fa18 with:
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
        require ext_code.size(stor16)
        call stor16.switchTotem(uint8 arg1, uint8 arg2, address arg3) with:
             gas gas_remaining wei
            args arg1 << 248, arg2 << 248, msg.sender
    else:
        if 4 == arg1:
            require ext_code.size(stor18)
            call stor18.switchTotem(uint8 arg1, uint8 arg2, address arg3) with:
                 gas gas_remaining wei
                args arg1 << 248, arg2 << 248, msg.sender
        else:
            require ext_code.size(stor17)
            call stor17.switchTotem(uint8 arg1, uint8 arg2, address arg3) with:
                 gas gas_remaining wei
                args arg1 << 248, arg2 << 248, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit SwitchTotem(arg2, msg.sender, arg1);
    stor1 = 1
}

function sub_71e466ad(?) payable {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if bool(stor20[address(arg1)]) != 1:
        revert with 0, 'Invalid token alloc'
    if arg5 > 3:
        revert with 0, 'Not oasis or elev'
    if stor27[address(arg1)][arg5 << 248]:
        revert with 0, 'Duplicated'
    if arg3 > 400:
        revert with 0, 'Invalid deposit fee'
    stor25.length++
    stor9449[stor25.length.field_5] = stor9449[stor25.length.field_5] and !(255 * 256^stor25.length % 32) or 256^stor25.length % 32 * uint8(stor25.length)
    stor27[address(arg1)][arg5 << 248] = 1
    sub_61c952b8[uint8(stor25.length)] = arg5
    tokenElevationPid[address(arg1)][arg5 << 248] = uint8(stor25.length)
    if arg5 > 4:
        revert with 0, 'Invalid elev'
    if not arg5:
        require ext_code.size(stor16)
        call stor16.0x8d2c35b2 with:
             gas gas_remaining wei
            args 0, uint32(stor25.length), arg5 << 248, arg2, arg1, arg3 << 240, arg4, arg6
    else:
        if 4 == arg5:
            require ext_code.size(stor18)
            call stor18.0x8d2c35b2 with:
                 gas gas_remaining wei
                args 0, uint32(stor25.length), arg5 << 248, arg2, arg1, arg3 << 240, arg4, arg6
        else:
            require ext_code.size(stor17)
            call stor17.0x8d2c35b2 with:
                 gas gas_remaining wei
                args 0, uint32(stor25.length), arg5 << 248, arg2, arg1, arg3 << 240, arg4, arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit PoolCreated(arg5 << 248, arg1, uint8(stor25.length));
}

function sub_7aec3f7a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(stor12)
    staticcall stor12.getKeywordRoundTimeInFailsafe() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    if not ext_call.return_data[0]:
        staticcall stor12.0x55fd7963 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        staticcall stor15 with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=arg1[all]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Bad keyword'
    staticcall stor12.requireRolloverReferralBurnAvailable() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor14)
    call stor14.burnUnclaimedReferralRewardsAndRolloverRound(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor12)
    call stor12.rolloverReferralBurn() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit RolloverReferral(msg.sender);
}

function deposit(uint8 arg1, uint256 arg2, uint8 arg3) payable {
    require calldata.size - 4 >= 96
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if arg1 <= 0:
        revert with 0, 'Pool doesnt exist'
    if arg1 >= stor25.length:
        revert with 0, 'Pool doesnt exist'
    if sub_61c952b8[arg1 << 248]:
        require ext_code.size(stor12)
        staticcall stor12.0xc416fa18 with:
                gas gas_remaining wei
               args sub_61c952b8[arg1 << 248]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg3 >= ext_call.return_data[31 len 1]:
            revert with 0, 'Invalid totem'
    if sub_61c952b8[arg1 << 248] > 4:
        revert with 0, 'Invalid elev'
    if not sub_61c952b8[arg1 << 248]:
        require ext_code.size(stor16)
        call stor16.deposit(uint8 arg1, uint256 arg2, uint8 arg3, address arg4) with:
             gas gas_remaining wei
            args 0, 0, arg2, arg3 << 248, msg.sender
    else:
        if 4 == sub_61c952b8[arg1 << 248]:
            require ext_code.size(stor18)
            call stor18.deposit(uint8 arg1, uint256 arg2, uint8 arg3, address arg4) with:
                 gas gas_remaining wei
                args 0, 0, arg2, arg3 << 248, msg.sender
        else:
            require ext_code.size(stor17)
            call stor17.deposit(uint8 arg1, uint256 arg2, uint8 arg3, address arg4) with:
                 gas gas_remaining wei
                args 0, 0, arg2, arg3 << 248, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor2 = ext_call.return_data[0] + arg2 + stor2
    emit Deposit(ext_call.return_data[0], msg.sender, arg1);
    stor1 = 1
}

function userTotem(uint8 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if sub_61c952b8[arg1 << 248] > 4:
        revert with 0, 'Invalid elev'
    if arg1 > 4:
        revert with 0, 'Invalid elev'
    if not arg1:
        require ext_code.size(stor16)
        staticcall stor16.isTotemInUse(uint8 arg1, address arg2) with:
                gas gas_remaining wei
               args arg1 << 248, arg2
    else:
        if 4 == arg1:
            require ext_code.size(stor18)
            staticcall stor18.isTotemInUse(uint8 arg1, address arg2) with:
                    gas gas_remaining wei
                   args arg1 << 248, arg2
        else:
            require ext_code.size(stor17)
            staticcall stor17.isTotemInUse(uint8 arg1, address arg2) with:
                    gas gas_remaining wei
                   args arg1 << 248, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > 4:
        revert with 0, 'Invalid elev'
    if not arg1:
        require ext_code.size(stor16)
        staticcall stor16.selectedTotem(uint8 arg1, address arg2) with:
                gas gas_remaining wei
               args arg1 << 248, arg2
    else:
        if 4 == arg1:
            require ext_code.size(stor18)
            staticcall stor18.selectedTotem(uint8 arg1, address arg2) with:
                    gas gas_remaining wei
                   args arg1 << 248, arg2
        else:
            require ext_code.size(stor17)
            staticcall stor17.selectedTotem(uint8 arg1, address arg2) with:
                    gas gas_remaining wei
                   args arg1 << 248, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0]), uint8(ext_call.return_data[0])
}

function elevModifiedAllocPoint(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_61c952b8[arg1 << 248] > 4:
        revert with 0, 'Invalid elev'
    if not sub_61c952b8[arg1 << 248]:
        require ext_code.size(stor16)
        staticcall stor16.0x5b6d6973 with:
                gas gas_remaining wei
               args arg1
    else:
        if 4 == sub_61c952b8[arg1 << 248]:
            require ext_code.size(stor18)
            staticcall stor18.0x5b6d6973 with:
                    gas gas_remaining wei
                   args arg1
        else:
            require ext_code.size(stor17)
            staticcall stor17.0x5b6d6973 with:
                    gas gas_remaining wei
                   args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if sub_61c952b8[arg1 << 248] > 4:
        revert with 0, 'Invalid elev'
    if not sub_61c952b8[arg1 << 248]:
        require ext_code.size(stor16)
        staticcall stor16.0x1f2363ac with:
                gas gas_remaining wei
               args arg1
    else:
        if 4 == sub_61c952b8[arg1 << 248]:
            require ext_code.size(stor18)
            staticcall stor18.0x1f2363ac with:
                    gas gas_remaining wei
                   args arg1
        else:
            require ext_code.size(stor17)
            staticcall stor17.0x1f2363ac with:
                    gas gas_remaining wei
                   args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    staticcall stor12.getElevationModifiedAllocPoint(uint256 arg1, uint8 arg2) with:
            gas gas_remaining wei
           args sub_ce759187[ext_call.return_data[12 len 20]], sub_61c952b8[arg1 << 248]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7, address arg8) payable {
    require calldata.size - 4 >= 256
    if not uint8(stor0.field_168):
        if ext_code.size(this.address):
            if uint8(stor0.field_160):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
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
    if not arg7:
        revert with 0, 'Contract is zero'
    if not arg8:
        revert with 0, 'Contract is zero'
    summitAddress = arg1
    stor12 = arg2
    stor13 = arg3
    stor14 = arg4
    stor15 = arg5
    stor16 = arg6
    stor17 = arg7
    stor18 = arg8
    require ext_code.size(arg7)
    call arg7.initialize(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor18)
    call stor18.initialize(address arg1) with:
         gas gas_remaining wei
        args stor12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    summitPerSecond = 25 * 10^13 * 3600
    devSummitPerSecond = 8 * 10^16
    referralsSummitPerSecond = 2 * 10^16
    if not uint8(stor0.field_168):
        uint8(stor0.field_168) = 0
}

function sub_ffcd80a0(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if arg1 < 1:
        revert with 0, 'Not elev or exped'
    if arg1 > 4:
        revert with 0, 'Not elev or exped'
    require ext_code.size(stor12)
    staticcall stor12.getKeywordRoundTimeInFailsafe() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    if not ext_call.return_data[0]:
        staticcall stor12.0x55fd7963 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        staticcall stor15 with:
                gas gas_remaining wei
               args Array(len=arg2.length, data=arg2[all]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Bad keyword'
    staticcall stor12.requireElevationRolloverAvailable(uint8 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(summitAddress)
    call summitAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, 2 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor12)
    staticcall stor12.0x8b02ea7b with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor13)
    staticcall stor13 with:
            gas gas_remaining wei
           args Array(len=arg2.length, data=arg2[all]), msg.sender, ext_call.return_data[0], arg1 << 248, stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor13)
    staticcall stor13.hashAgainstElevationReturnUint(bytes32 arg1, uint8 arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    call stor12.selectWinningTotem(uint8 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1 << 248, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 > 4:
        revert with 0, 'Invalid elev'
    if not arg1:
        require ext_code.size(stor16)
        call stor16.rollover(uint8 arg1) with:
             gas gas_remaining wei
            args arg1
    else:
        if 4 == arg1:
            require ext_code.size(stor18)
            call stor18.rollover(uint8 arg1) with:
                 gas gas_remaining wei
                args arg1
        else:
            require ext_code.size(stor17)
            call stor17.rollover(uint8 arg1) with:
                 gas gas_remaining wei
                args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor12)
    call stor12.rolloverElevation(uint8 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Rollover(0, msg.sender);
}

function elevate(uint8 arg1, uint8 arg2, uint256 arg3, uint8 arg4) payable {
    require calldata.size - 4 >= 128
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if arg1 <= 0:
        revert with 0, 'Pool doesnt exist'
    if arg1 >= stor25.length:
        revert with 0, 'Pool doesnt exist'
    if arg2 <= 0:
        revert with 0, 'Pool doesnt exist'
    if arg2 >= stor25.length:
        revert with 0, 'Pool doesnt exist'
    if arg3 <= 0:
        revert with 0, 'Transfer non zero amount'
    if sub_61c952b8[arg1 << 248] == sub_61c952b8[arg2]:
        revert with 0, 'Must change elev'
    if 4 == sub_61c952b8[arg1 << 248]:
        revert with 0, 'No exped elev switch'
    if 4 == sub_61c952b8[arg2]:
        revert with 0, 'No exped elev switch'
    if sub_61c952b8[arg1 << 248] > 4:
        revert with 0, 'Invalid elev'
    if not sub_61c952b8[arg1 << 248]:
        require ext_code.size(stor16)
        call stor16.elevateWithdraw(uint8 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args arg1 << 248, arg3, msg.sender
    else:
        if 4 == sub_61c952b8[arg1 << 248]:
            require ext_code.size(stor18)
            call stor18.elevateWithdraw(uint8 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args arg1 << 248, arg3, msg.sender
        else:
            require ext_code.size(stor17)
            call stor17.elevateWithdraw(uint8 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args arg1 << 248, arg3, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if sub_61c952b8[arg2] > 4:
        revert with 0, 'Invalid elev'
    if not sub_61c952b8[arg2]:
        require ext_code.size(stor16)
        call stor16.validateElevate(uint8 arg1, address arg2, uint256 arg3, uint8 arg4, address arg5) with:
             gas gas_remaining wei
            args 0, 0, address(ext_call.return_data[0]), ext_call.return_data[64], arg4, msg.sender
    else:
        if 4 == sub_61c952b8[arg2]:
            require ext_code.size(stor18)
            call stor18.validateElevate(uint8 arg1, address arg2, uint256 arg3, uint8 arg4, address arg5) with:
                 gas gas_remaining wei
                args 0, 0, address(ext_call.return_data[0]), ext_call.return_data[64], arg4, msg.sender
        else:
            require ext_code.size(stor17)
            call stor17.validateElevate(uint8 arg1, address arg2, uint256 arg3, uint8 arg4, address arg5) with:
                 gas gas_remaining wei
                args 0, 0, address(ext_call.return_data[0]), ext_call.return_data[64], arg4, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_61c952b8[arg2] > 4:
        revert with 0, 'Invalid elev'
    if not sub_61c952b8[arg2]:
        require ext_code.size(stor16)
        call stor16.elevateDeposit(uint8 arg1, uint256 arg2, uint8 arg3, address arg4) with:
             gas gas_remaining wei
            args 0, 0, ext_call.return_data[32], arg4 << 248, msg.sender
    else:
        if 4 == sub_61c952b8[arg2]:
            require ext_code.size(stor18)
            call stor18.elevateDeposit(uint8 arg1, uint256 arg2, uint8 arg3, address arg4) with:
                 gas gas_remaining wei
                args 0, 0, ext_call.return_data[32], arg4 << 248, msg.sender
        else:
            require ext_code.size(stor17)
            call stor17.elevateDeposit(uint8 arg1, uint256 arg2, uint8 arg3, address arg4) with:
                 gas gas_remaining wei
                args 0, 0, ext_call.return_data[32], arg4 << 248, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Elevate(arg4 << 248, ext_call.return_data[0], msg.sender, arg1, arg2);
    stor1 = 1
}

function disablePassthroughTokenManagement(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor16 != msg.sender:
        if stor17 != msg.sender:
            if stor18 != msg.sender:
                revert with 0, 'Only subCarts'
    require ext_code.size(stor10)
    call stor10.0x441a3e70 with:
         gas gas_remaining wei
        args arg2, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor11)
    staticcall stor11.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_code.size(stor11):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), 0
        mem[324 len 0] = 0
        call stor11 with:
           funct uint32(stor8)
             gas gas_remaining wei
            args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), 0) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), 0
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor8):
                revert with 0, 32, 42, 0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
            if not ext_call.return_data[0]:
                if not ext_code.size(stor11):
                    revert with 0, 'Address: call to non-contract'
                mem[424 len 64] = 0, address(expedAddAddress), 0
                call stor11 with:
                   funct uint32(stor9)
                     gas gas_remaining wei
                    args 0, mem[360 len 28], mem[488 len 4]
            else:
                if 92 * ext_call.return_data[0] / ext_call.return_data[0] != 92:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                if not ext_code.size(stor11):
                    revert with 0, 'Address: call to non-contract'
                mem[424 len 64] = 0, address(expedAddAddress), Mask(224, 32, 92 * ext_call.return_data[0] / 100) >> 32
                call stor11 with:
                   funct uint32(stor9)
                     gas gas_remaining wei
                    args 92 * ext_call.return_data[0] / 100, mem[360 len 28], mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), 0
                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor8):
                    revert with 0, 32, 42, 0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500, mem[534 len 22]
            else:
                mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[456]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                    mem[ceil32(return_data.size) + 535 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeBEP20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                mem[ceil32(return_data.size) + 371 len 22]
            if not ext_call.return_data[0]:
                if not ext_code.size(stor11):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = 0, address(expedAddAddress), 0
                call stor11 with:
                   funct uint32(stor9)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
            else:
                if 92 * ext_call.return_data[0] / ext_call.return_data[0] != 92:
                    revert with 0, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 362 len 31]
                if not ext_code.size(stor11):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = 0, address(expedAddAddress), Mask(224, 32, 92 * ext_call.return_data[0] / 100) >> 32
                call stor11 with:
                   funct uint32(stor9)
                     gas gas_remaining wei
                    args 92 * ext_call.return_data[0] / 100, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), 0
                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor8):
                    revert with 0, 
                                32,
                                42,
                                0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                mem[ceil32(return_data.size) + 535 len 22]
            else:
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeBEP20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    else:
        if 8 * ext_call.return_data[0] / ext_call.return_data[0] != 8:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_code.size(stor11):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 32, 8 * ext_call.return_data[0] / 100) >> 32
        mem[324 len 0] = 0
        call stor11 with:
           funct uint32(stor8)
             gas gas_remaining wei
            args Mask(224, 32, 8 * ext_call.return_data[0] / 100) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), 8 * ext_call.return_data[0] / 100
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor8):
                revert with 0, 32, 42, 0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
            if not ext_call.return_data[0]:
                if not ext_code.size(stor11):
                    revert with 0, 'Address: call to non-contract'
                mem[424 len 64] = 0, address(expedAddAddress), 0
                call stor11 with:
                   funct uint32(stor9)
                     gas gas_remaining wei
                    args 0, mem[360 len 28], mem[488 len 4]
            else:
                if 92 * ext_call.return_data[0] / ext_call.return_data[0] != 92:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                if not ext_code.size(stor11):
                    revert with 0, 'Address: call to non-contract'
                mem[424 len 64] = 0, address(expedAddAddress), Mask(224, 32, 92 * ext_call.return_data[0] / 100) >> 32
                call stor11 with:
                   funct uint32(stor9)
                     gas gas_remaining wei
                    args 92 * ext_call.return_data[0] / 100, mem[360 len 28], mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), 8 * ext_call.return_data[0] / 100
                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor8):
                    revert with 0, 32, 42, 0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500, mem[534 len 22]
            else:
                mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[456]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                    mem[ceil32(return_data.size) + 535 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeBEP20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                mem[ceil32(return_data.size) + 371 len 22]
            if not ext_call.return_data[0]:
                if not ext_code.size(stor11):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = 0, address(expedAddAddress), 0
                call stor11 with:
                   funct uint32(stor9)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
            else:
                if 92 * ext_call.return_data[0] / ext_call.return_data[0] != 92:
                    revert with 0, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 362 len 31]
                if not ext_code.size(stor11):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = 0, address(expedAddAddress), Mask(224, 32, 92 * ext_call.return_data[0] / 100) >> 32
                call stor11 with:
                   funct uint32(stor9)
                     gas gas_remaining wei
                    args 92 * ext_call.return_data[0] / 100, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), 8 * ext_call.return_data[0] / 100
                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor8):
                    revert with 0, 
                                32,
                                42,
                                0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                mem[ceil32(return_data.size) + 535 len 22]
            else:
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeBEP20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}

function setTokenSharedAlloc(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if bool(stor20[address(arg1)]) != 1:
        revert with 0, 'Invalid token alloc'
    if stor24[address(arg1)][3]:
        if stor24[address(arg1)][2]:
            if stor24[address(arg1)][1]:
                if stor24[address(arg1)][0]:
                    if not arg2:
                        if sub_d3be1f65[address(arg1)] > totalAllocPoint:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalAllocPoint -= sub_d3be1f65[address(arg1)]
                        sub_d3be1f65[address(arg1)] = 0
                    else:
                        if 229 * arg2 / arg2 != 229:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if sub_d3be1f65[address(arg1)] > totalAllocPoint:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 229 * arg2 / 100 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint = (229 * arg2 / 100) + totalAllocPoint - sub_d3be1f65[address(arg1)]
                        sub_d3be1f65[address(arg1)] = 229 * arg2 / 100
                else:
                    if not arg2:
                        if sub_d3be1f65[address(arg1)] > totalAllocPoint:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalAllocPoint -= sub_d3be1f65[address(arg1)]
                        sub_d3be1f65[address(arg1)] = 0
                    else:
                        if 129 * arg2 / arg2 != 129:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if sub_d3be1f65[address(arg1)] > totalAllocPoint:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 129 * arg2 / 100 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint = (129 * arg2 / 100) + totalAllocPoint - sub_d3be1f65[address(arg1)]
                        sub_d3be1f65[address(arg1)] = 129 * arg2 / 100
            else:
                if stor24[address(arg1)][0]:
                    if not arg2:
                        if sub_d3be1f65[address(arg1)] > totalAllocPoint:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalAllocPoint -= sub_d3be1f65[address(arg1)]
                        sub_d3be1f65[address(arg1)] = 0
                    else:
                        if 119 * arg2 / arg2 != 119:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if sub_d3be1f65[address(arg1)] > totalAllocPoint:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 119 * arg2 / 100 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint = (119 * arg2 / 100) + totalAllocPoint - sub_d3be1f65[address(arg1)]
                        sub_d3be1f65[address(arg1)] = 119 * arg2 / 100
                else:
                    if not arg2:
                        if sub_d3be1f65[address(arg1)] > totalAllocPoint:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalAllocPoint -= sub_d3be1f65[address(arg1)]
                        sub_d3be1f65[address(arg1)] = 0
                    else:
                        if 19 * arg2 / arg2 != 19:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if sub_d3be1f65[address(arg1)] > totalAllocPoint:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 19 * arg2 / 100 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint = (19 * arg2 / 100) + totalAllocPoint - sub_d3be1f65[address(arg1)]
                        sub_d3be1f65[address(arg1)] = 19 * arg2 / 100
        else:
            if stor24[address(arg1)][1]:
                if stor24[address(arg1)][0]:
                    if not arg2:
                        if sub_d3be1f65[address(arg1)] > totalAllocPoint:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalAllocPoint -= sub_d3be1f65[address(arg1)]
                        sub_d3be1f65[address(arg1)] = 0
                    else:
                        if 104 * arg2 / arg2 != 104:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if sub_d3be1f65[address(arg1)] > totalAllocPoint:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 104 * arg2 / 100 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint = (104 * arg2 / 100) + totalAllocPoint - sub_d3be1f65[address(arg1)]
                        sub_d3be1f65[address(arg1)] = 104 * arg2 / 100
                else:
                    if not arg2:
                        if sub_d3be1f65[address(arg1)] > totalAllocPoint:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalAllocPoint -= sub_d3be1f65[address(arg1)]
                        sub_d3be1f65[address(arg1)] = 0
                    else:
                        if 4 * arg2 / arg2 != 4:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if sub_d3be1f65[address(arg1)] > totalAllocPoint:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 4 * arg2 / 100 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint = (4 * arg2 / 100) + totalAllocPoint - sub_d3be1f65[address(arg1)]
                        sub_d3be1f65[address(arg1)] = 4 * arg2 / 100
            else:
                if stor24[address(arg1)][0]:
                    if not arg2:
                        if sub_d3be1f65[address(arg1)] > totalAllocPoint:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalAllocPoint -= sub_d3be1f65[address(arg1)]
                        sub_d3be1f65[address(arg1)] = 0
                    else:
                        if 250 * arg2 / arg2 != 250:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if sub_d3be1f65[address(arg1)] > totalAllocPoint:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 250 * arg2 / 100 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint = (250 * arg2 / 100) + totalAllocPoint - sub_d3be1f65[address(arg1)]
                        sub_d3be1f65[address(arg1)] = 250 * arg2 / 100
                else:
                    if not arg2:
                        if sub_d3be1f65[address(arg1)] > totalAllocPoint:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalAllocPoint -= sub_d3be1f65[address(arg1)]
                        sub_d3be1f65[address(arg1)] = 0
                    else:
                        if 150 * arg2 / arg2 != 150:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if sub_d3be1f65[address(arg1)] > totalAllocPoint:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 150 * arg2 / 100 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint = (150 * arg2 / 100) + totalAllocPoint - sub_d3be1f65[address(arg1)]
                        sub_d3be1f65[address(arg1)] = 150 * arg2 / 100
    else:
        if stor24[address(arg1)][2]:
            if stor24[address(arg1)][1]:
                if stor24[address(arg1)][0]:
                    if not arg2:
                        if sub_d3be1f65[address(arg1)] > totalAllocPoint:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalAllocPoint -= sub_d3be1f65[address(arg1)]
                        sub_d3be1f65[address(arg1)] = 0
                    else:
                        if 79 * arg2 / arg2 != 79:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if sub_d3be1f65[address(arg1)] > totalAllocPoint:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 79 * arg2 / 100 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint = (79 * arg2 / 100) + totalAllocPoint - sub_d3be1f65[address(arg1)]
                        sub_d3be1f65[address(arg1)] = 79 * arg2 / 100
                else:
                    if not arg2:
                        if sub_d3be1f65[address(arg1)] > totalAllocPoint:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalAllocPoint -= sub_d3be1f65[address(arg1)]
                        sub_d3be1f65[address(arg1)] = 0
                    else:
                        if 235 * arg2 / arg2 != 235:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if sub_d3be1f65[address(arg1)] > totalAllocPoint:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 235 * arg2 / 100 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint = (235 * arg2 / 100) + totalAllocPoint - sub_d3be1f65[address(arg1)]
                        sub_d3be1f65[address(arg1)] = 235 * arg2 / 100
            else:
                if stor24[address(arg1)][0]:
                    if not arg2:
                        if sub_d3be1f65[address(arg1)] > totalAllocPoint:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalAllocPoint -= sub_d3be1f65[address(arg1)]
                        sub_d3be1f65[address(arg1)] = 0
                    else:
                        if 225 * arg2 / arg2 != 225:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if sub_d3be1f65[address(arg1)] > totalAllocPoint:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 225 * arg2 / 100 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint = (225 * arg2 / 100) + totalAllocPoint - sub_d3be1f65[address(arg1)]
                        sub_d3be1f65[address(arg1)] = 225 * arg2 / 100
                else:
                    if not arg2:
                        if sub_d3be1f65[address(arg1)] > totalAllocPoint:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalAllocPoint -= sub_d3be1f65[address(arg1)]
                        sub_d3be1f65[address(arg1)] = 0
                    else:
                        if 125 * arg2 / arg2 != 125:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if sub_d3be1f65[address(arg1)] > totalAllocPoint:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 125 * arg2 / 100 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint = (125 * arg2 / 100) + totalAllocPoint - sub_d3be1f65[address(arg1)]
                        sub_d3be1f65[address(arg1)] = 125 * arg2 / 100
        else:
            if stor24[address(arg1)][1]:
                if stor24[address(arg1)][0]:
                    if not arg2:
                        if sub_d3be1f65[address(arg1)] > totalAllocPoint:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalAllocPoint -= sub_d3be1f65[address(arg1)]
                        sub_d3be1f65[address(arg1)] = 0
                    else:
                        if 210 * arg2 / arg2 != 210:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if sub_d3be1f65[address(arg1)] > totalAllocPoint:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 210 * arg2 / 100 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint = (210 * arg2 / 100) + totalAllocPoint - sub_d3be1f65[address(arg1)]
                        sub_d3be1f65[address(arg1)] = 210 * arg2 / 100
                else:
                    if not arg2:
                        if sub_d3be1f65[address(arg1)] > totalAllocPoint:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalAllocPoint -= sub_d3be1f65[address(arg1)]
                        sub_d3be1f65[address(arg1)] = 0
                    else:
                        if 110 * arg2 / arg2 != 110:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if sub_d3be1f65[address(arg1)] > totalAllocPoint:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 110 * arg2 / 100 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint = (110 * arg2 / 100) + totalAllocPoint - sub_d3be1f65[address(arg1)]
                        sub_d3be1f65[address(arg1)] = 110 * arg2 / 100
            else:
                if not stor24[address(arg1)][0]:
                    if arg2:
                        if 0 / arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                    if sub_d3be1f65[address(arg1)] > totalAllocPoint:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalAllocPoint -= sub_d3be1f65[address(arg1)]
                    sub_d3be1f65[address(arg1)] = 0
                else:
                    if not arg2:
                        if sub_d3be1f65[address(arg1)] > totalAllocPoint:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalAllocPoint -= sub_d3be1f65[address(arg1)]
                        sub_d3be1f65[address(arg1)] = 0
                    else:
                        if 100 * arg2 / arg2 != 100:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if sub_d3be1f65[address(arg1)] > totalAllocPoint:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 100 * arg2 / 100 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint = (100 * arg2 / 100) + totalAllocPoint - sub_d3be1f65[address(arg1)]
                        sub_d3be1f65[address(arg1)] = 100 * arg2 / 100
    sub_ce759187[address(arg1)] = arg2
    emit TokenAllocUpdated(arg2, arg1);
}



}
