contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint8 stor0; offset 168
uint16 stor0; offset 160
address owner;
address collateralReserveAddress;
address sub_b16ce460Address;
address sub_d74d1a0eAddress;
address sub_4c087b20Address;
address sub_fbc9a844Address;
address dollarAddress;
address shareAddress;
address collateralAddress;
address sub_adf5cda0Address;
address sub_3e0ca9aaAddress;
address profitSharingFundAddress;
address sub_6a475ee3Address;
array of address sub_1189ebea;
mapping of uint8 stor15;
uint8 stor16;
uint256 stor16; offset 8
uint256 missing_decimals;

function sub_1189ebea(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_1189ebea.length
    return sub_1189ebea[arg1]
}

function sub_3e0ca9aa(?) payable {
    return sub_3e0ca9aaAddress
}

function missing_decimals() payable {
    return missing_decimals
}

function collateralReserve() payable {
    return collateralReserveAddress
}

function sub_4c087b20(?) payable {
    return sub_4c087b20Address
}

function dollar() payable {
    return dollarAddress
}

function sub_6a475ee3(?) payable {
    return sub_6a475ee3Address
}

function owner() payable {
    return owner
}

function pools(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor15[arg1])
}

function share() payable {
    return shareAddress
}

function sub_adf5cda0(?) payable {
    return sub_adf5cda0Address
}

function sub_b16ce460(?) payable {
    return sub_b16ce460Address
}

function sub_d74d1a0e(?) payable {
    return sub_d74d1a0eAddress
}

function collateral() payable {
    return collateralAddress
}

function profitSharingFund() payable {
    return profitSharingFundAddress
}

function sub_fbc9a844(?) payable {
    return sub_fbc9a844Address
}

function _fallback() payable {
    revert
}

function hasPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (1 == bool(stor15[address(arg1)]))
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setOracleShare(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0, 'invalidAddress'
    sub_d74d1a0eAddress = arg1
}

function setOracleDollar(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0, 'invalidAddress'
    sub_b16ce460Address = arg1
}

function setTreasuryPolicy(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0, 'invalidAddress'
    sub_3e0ca9aaAddress = arg1
}

function setProfitController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0, 'invalidAddress'
    sub_6a475ee3Address = arg1
}

function setOracleCollateral(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0, 'invalidAddress'
    sub_fbc9a844Address = arg1
}

function sharePrice() payable {
    require ext_code.size(sub_d74d1a0eAddress)
    staticcall sub_d74d1a0eAddress.consult() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function dollarPrice() payable {
    require ext_code.size(sub_b16ce460Address)
    staticcall sub_b16ce460Address.consult() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function minting_fee() payable {
    require ext_code.size(sub_3e0ca9aaAddress)
    staticcall sub_3e0ca9aaAddress.0xc3355b8d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_73f148b6(?) payable {
    require ext_code.size(sub_4c087b20Address)
    staticcall sub_4c087b20Address.consult() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setCollateralRatioPolicy(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0, 'invalidAddress'
    sub_adf5cda0Address = arg1
}

function collateralPrice() payable {
    require ext_code.size(sub_fbc9a844Address)
    staticcall sub_fbc9a844Address.consult() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function redemption_fee() payable {
    require ext_code.size(sub_3e0ca9aaAddress)
    staticcall sub_3e0ca9aaAddress.0xcb73999f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setProfitSharingFund(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0, 'invalidAddress'
    profitSharingFundAddress = arg1
}

function setCollateralReserve(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0, 'invalidAddress'
    collateralReserveAddress = arg1
}

function sub_069413ae(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not address(arg1):
        revert with 0, 'invalidAddress'
    sub_4c087b20Address = address(arg1)
}

function target_collateral_ratio() payable {
    require ext_code.size(sub_adf5cda0Address)
    staticcall sub_adf5cda0Address.0x4006311b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function effective_collateral_ratio() payable {
    require ext_code.size(sub_adf5cda0Address)
    staticcall sub_adf5cda0Address.0xaf83136e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function addPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if stor15[address(arg1)]:
        revert with 0, 'poolExisted'
    stor15[address(arg1)] = 1
    sub_1189ebea.length++
    sub_1189ebea[sub_1189ebea.length] = arg1
    emit PoolAdded(arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function requestTransfer(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not stor15[msg.sender]:
        revert with 0, 'Only pools can use this function'
    require ext_code.size(collateralReserveAddress)
    call collateralReserveAddress.0xa5f2a152 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function removePool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if bool(stor15[address(arg1)]) != 1:
        revert with 0, '!pool'
    stor15[address(arg1)] = 0
    idx = 0
    while idx < sub_1189ebea.length:
        mem[0] = 14
        if sub_1189ebea[idx] != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= sub_1189ebea.length:
            revert with 0, 50
        sub_1189ebea[idx] = 0
        emit PoolRemoved(arg1);
    emit PoolRemoved(arg1);
}

function setCollateralAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0, 'invalidAddress'
    collateralAddress = arg1
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 < ext_call.return_data[31 len 1]:
        revert with 0, 17
    uint8(stor16.field_0) = uint8(-ext_call.return_data[31 len 1] + 18)
    Mask(248, 0, stor16.field_8) = 0
}

function totalUnclaimedBalance() payable {
    mem[64] = 96
    idx = 0
    s = 0
    while idx < sub_1189ebea.length:
        mem[0] = 14
        if not sub_1189ebea[idx]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= sub_1189ebea.length:
            revert with 0, 50
        mem[0] = 14
        require ext_code.size(sub_1189ebea[idx])
        staticcall sub_1189ebea[idx].unclaimed_pool_collateral() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _15 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if s > !mem[_15]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[_15]
        continue 
    return s
}

function globalCollateralBalance() payable {
    mem[100] = collateralReserveAddress
    require ext_code.size(collateralAddress)
    staticcall collateralAddress.0x70a08231 with:
            gas gas_remaining wei
           args collateralReserveAddress
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < sub_1189ebea.length:
        mem[0] = 14
        if not sub_1189ebea[idx]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= sub_1189ebea.length:
            revert with 0, 50
        mem[0] = 14
        require ext_code.size(sub_1189ebea[idx])
        staticcall sub_1189ebea[idx].unclaimed_pool_collateral() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _18 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if s > !mem[_18]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[_18]
        continue 
    if ext_call.return_data[0] < s:
        revert with 0, 17
    return (ext_call.return_data[0] - s)
}

function excessCollateralBalance() payable {
    require ext_code.size(sub_adf5cda0Address)
    staticcall sub_adf5cda0Address.0x4006311b with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_adf5cda0Address)
    staticcall sub_adf5cda0Address.0xaf83136e with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= ext_call.return_data[0]:
        return 0
    mem[(2 * ceil32(return_data.size)) + 100] = collateralReserveAddress
    require ext_code.size(collateralAddress)
    staticcall collateralAddress.0x70a08231 with:
            gas gas_remaining wei
           args collateralReserveAddress
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < sub_1189ebea.length:
        mem[0] = 14
        if not sub_1189ebea[idx]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= sub_1189ebea.length:
            revert with 0, 50
        mem[0] = 14
        require ext_code.size(sub_1189ebea[idx])
        staticcall sub_1189ebea[idx].unclaimed_pool_collateral() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _27 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if s > !mem[_27]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[_27]
        continue 
    if ext_call.return_data[0] < s:
        revert with 0, 17
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if 0 and ext_call.return_data[0] - s > -1 / 0:
        revert with 0, 17
    return ((ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (s * ext_call.return_data[0]) / 10^6)
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7, address arg8) payable {
    require calldata.size - 4 >= 256
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    require arg8 == arg8
    if not uint8(stor0.field_168):
        if uint8(stor0.field_160):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_168):
            uint16(stor0.field_160) = 257
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0, 'invalidAddress'
    if not arg2:
        revert with 0, 'invalidAddress'
    dollarAddress = arg1
    shareAddress = arg2
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg3:
        revert with 0, 'invalidAddress'
    collateralAddress = arg3
    require ext_code.size(arg3)
    staticcall arg3.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 < ext_call.return_data[31 len 1]:
        revert with 0, 17
    uint8(stor16.field_0) = uint8(-ext_call.return_data[31 len 1] + 18)
    Mask(248, 0, stor16.field_8) = 0
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg4:
        revert with 0, 'invalidAddress'
    sub_3e0ca9aaAddress = arg4
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg5:
        revert with 0, 'invalidAddress'
    sub_adf5cda0Address = arg5
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg6:
        revert with 0, 'invalidAddress'
    collateralReserveAddress = arg6
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg7:
        revert with 0, 'invalidAddress'
    profitSharingFundAddress = arg7
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg8:
        revert with 0, 'invalidAddress'
    sub_6a475ee3Address = arg8
    if not uint8(stor0.field_168):
        uint8(stor0.field_168) = 0
}

function globalCollateralValue() payable {
    if not missing_decimals:
        require ext_code.size(sub_fbc9a844Address)
        staticcall sub_fbc9a844Address.consult() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 100] = collateralReserveAddress
        require ext_code.size(collateralAddress)
        staticcall collateralAddress.0x70a08231 with:
                gas gas_remaining wei
               args collateralReserveAddress
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        idx = 0
        s = 0
        while idx < sub_1189ebea.length:
            mem[0] = 14
            if not sub_1189ebea[idx]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= sub_1189ebea.length:
                revert with 0, 50
            mem[0] = 14
            require ext_code.size(sub_1189ebea[idx])
            staticcall sub_1189ebea[idx].unclaimed_pool_collateral() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _58 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > !mem[_58]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_58]
            continue 
        if ext_call.return_data[0] < s:
            revert with 0, 17
        if ext_call.return_data[0] - s and ext_call.return_data[0] > -1 / ext_call.return_data[0] - s:
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]):
            revert with 0, 17
        return ((ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) / 10^6)
    if bool(bool(missing_decimals < 78)) or bool(bool(missing_decimals < 32)):
        require ext_code.size(sub_fbc9a844Address)
        staticcall sub_fbc9a844Address.consult() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 100] = collateralReserveAddress
        require ext_code.size(collateralAddress)
        staticcall collateralAddress.0x70a08231 with:
                gas gas_remaining wei
               args collateralReserveAddress
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        idx = 0
        s = 0
        while idx < sub_1189ebea.length:
            mem[0] = 14
            if not sub_1189ebea[idx]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= sub_1189ebea.length:
                revert with 0, 50
            mem[0] = 14
            require ext_code.size(sub_1189ebea[idx])
            staticcall sub_1189ebea[idx].unclaimed_pool_collateral() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _57 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > !mem[_57]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_57]
            continue 
        if ext_call.return_data[0] < s:
            revert with 0, 17
        if ext_call.return_data[0] - s and ext_call.return_data[0] > -1 / ext_call.return_data[0] - s:
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) and 10^missing_decimals > -1 / (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]):
            revert with 0, 17
        return ((ext_call.return_data[0] * ext_call.return_data[0] * 10^missing_decimals) - (s * ext_call.return_data[0] * 10^missing_decimals) / 10^6)
    s = 10
    t = 1
    idx = missing_decimals
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    require ext_code.size(sub_fbc9a844Address)
    staticcall sub_fbc9a844Address.consult() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = collateralReserveAddress
    require ext_code.size(collateralAddress)
    staticcall collateralAddress.0x70a08231 with:
            gas gas_remaining wei
           args collateralReserveAddress
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    idx = 0
    u = 0
    while idx < sub_1189ebea.length:
        mem[0] = 14
        if not sub_1189ebea[idx]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = u
            continue 
        if idx >= sub_1189ebea.length:
            revert with 0, 50
        mem[0] = 14
        require ext_code.size(sub_1189ebea[idx])
        staticcall sub_1189ebea[idx].unclaimed_pool_collateral() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _85 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if u > !mem[_85]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        u = u + mem[_85]
        continue 
    if ext_call.return_data[0] < u:
        revert with 0, 17
    if ext_call.return_data[0] - u and ext_call.return_data[0] > -1 / ext_call.return_data[0] - u:
        revert with 0, 17
    if (ext_call.return_data[0] * ext_call.return_data[0]) - (u * ext_call.return_data[0]) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0]) - (u * ext_call.return_data[0]):
        revert with 0, 17
    return ((ext_call.return_data[0] * ext_call.return_data[0] * s * t) - (u * ext_call.return_data[0] * s * t) / 10^6)
}

function extractProfit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender == sub_6a475ee3Address:
        if arg1 <= 0:
            revert with 0, 'zero amount'
        if not profitSharingFundAddress:
            revert with 0, 'Invalid profitSharingFund'
        require ext_code.size(sub_adf5cda0Address)
        staticcall sub_adf5cda0Address.0x4006311b with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_adf5cda0Address)
        staticcall sub_adf5cda0Address.0xaf83136e with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= ext_call.return_data[0]:
            require ext_code.size(sub_3e0ca9aaAddress)
            staticcall sub_3e0ca9aaAddress.excess_collateral_safety_margin() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if False and ext_call.return_data[0] > 0:
                revert with 0, 17
            if arg1 > 0:
                revert with 0, 'Excess allowable amount'
        else:
            mem[(2 * ceil32(return_data.size)) + 100] = collateralReserveAddress
            require ext_code.size(collateralAddress)
            staticcall collateralAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args collateralReserveAddress
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            idx = 0
            s = 0
            while idx < sub_1189ebea.length:
                mem[0] = 14
                if not sub_1189ebea[idx]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= sub_1189ebea.length:
                    revert with 0, 50
                mem[0] = 14
                require ext_code.size(sub_1189ebea[idx])
                staticcall sub_1189ebea[idx].unclaimed_pool_collateral() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _95 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_95]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_95]
                continue 
            if ext_call.return_data[0] < s:
                revert with 0, 17
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 17
            if 0 and ext_call.return_data[0] - s > -1 / 0:
                revert with 0, 17
            require ext_code.size(sub_3e0ca9aaAddress)
            staticcall sub_3e0ca9aaAddress.excess_collateral_safety_margin() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _103 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (s * ext_call.return_data[0]) / 10^6 and mem[_103] > -1 / (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (s * ext_call.return_data[0]) / 10^6:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (s * ext_call.return_data[0]) / 10^6 < (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (s * ext_call.return_data[0]) / 10^6 * mem[_103] / 10^6:
                revert with 0, 17
            if arg1 > ((ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (s * ext_call.return_data[0]) / 10^6) - ((ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (s * ext_call.return_data[0]) / 10^6 * mem[_103] / 10^6):
                revert with 0, 'Excess allowable amount'
    else:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only profit controller or owner can trigger'
        if arg1 <= 0:
            revert with 0, 'zero amount'
        if not profitSharingFundAddress:
            revert with 0, 'Invalid profitSharingFund'
        require ext_code.size(sub_adf5cda0Address)
        staticcall sub_adf5cda0Address.0x4006311b with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_adf5cda0Address)
        staticcall sub_adf5cda0Address.0xaf83136e with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= ext_call.return_data[0]:
            require ext_code.size(sub_3e0ca9aaAddress)
            staticcall sub_3e0ca9aaAddress.excess_collateral_safety_margin() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if False and ext_call.return_data[0] > 0:
                revert with 0, 17
            if arg1 > 0:
                revert with 0, 'Excess allowable amount'
        else:
            mem[(2 * ceil32(return_data.size)) + 100] = collateralReserveAddress
            require ext_code.size(collateralAddress)
            staticcall collateralAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args collateralReserveAddress
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            idx = 0
            s = 0
            while idx < sub_1189ebea.length:
                mem[0] = 14
                if not sub_1189ebea[idx]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= sub_1189ebea.length:
                    revert with 0, 50
                mem[0] = 14
                require ext_code.size(sub_1189ebea[idx])
                staticcall sub_1189ebea[idx].unclaimed_pool_collateral() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _96 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_96]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_96]
                continue 
            if ext_call.return_data[0] < s:
                revert with 0, 17
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 17
            if 0 and ext_call.return_data[0] - s > -1 / 0:
                revert with 0, 17
            require ext_code.size(sub_3e0ca9aaAddress)
            staticcall sub_3e0ca9aaAddress.excess_collateral_safety_margin() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _104 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (s * ext_call.return_data[0]) / 10^6 and mem[_104] > -1 / (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (s * ext_call.return_data[0]) / 10^6:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (s * ext_call.return_data[0]) / 10^6 < (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (s * ext_call.return_data[0]) / 10^6 * mem[_104] / 10^6:
                revert with 0, 17
            if arg1 > ((ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (s * ext_call.return_data[0]) / 10^6) - ((ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (s * ext_call.return_data[0]) / 10^6 * mem[_104] / 10^6):
                revert with 0, 'Excess allowable amount'
    require ext_code.size(collateralReserveAddress)
    call collateralReserveAddress.0xa5f2a152 with:
         gas gas_remaining wei
        args collateralAddress, profitSharingFundAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit ProfitExtracted(arg1);
}

function info() payable {
    require ext_code.size(sub_b16ce460Address)
    staticcall sub_b16ce460Address.consult() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d74d1a0eAddress)
    staticcall sub_d74d1a0eAddress.consult() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_4c087b20Address)
    staticcall sub_4c087b20Address.consult() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(dollarAddress)
    staticcall dollarAddress.0x18160ddd with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_adf5cda0Address)
    staticcall sub_adf5cda0Address.0x4006311b with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_adf5cda0Address)
    staticcall sub_adf5cda0Address.0xaf83136e with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not missing_decimals:
        require ext_code.size(sub_fbc9a844Address)
        staticcall sub_fbc9a844Address.consult() with:
                gas gas_remaining wei
        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(10 * ceil32(return_data.size)) + 100] = collateralReserveAddress
        require ext_code.size(collateralAddress)
        staticcall collateralAddress.0x70a08231 with:
                gas gas_remaining wei
               args collateralReserveAddress
        mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (11 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        idx = 0
        s = 0
        while idx < sub_1189ebea.length:
            mem[0] = 14
            if not sub_1189ebea[idx]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= sub_1189ebea.length:
                revert with 0, 50
            mem[0] = 14
            require ext_code.size(sub_1189ebea[idx])
            staticcall sub_1189ebea[idx].unclaimed_pool_collateral() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _106 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > !mem[_106]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_106]
            continue 
        if ext_call.return_data[0] < s:
            revert with 0, 17
        if ext_call.return_data[0] - s and ext_call.return_data[0] > -1 / ext_call.return_data[0] - s:
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]):
            revert with 0, 17
        require ext_code.size(sub_3e0ca9aaAddress)
        staticcall sub_3e0ca9aaAddress.0xc3355b8d with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _122 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _124 = mem[_122]
        require ext_code.size(sub_3e0ca9aaAddress)
        staticcall sub_3e0ca9aaAddress.0xcb73999f with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _134 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        return ext_call.return_data[0], 
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) / 10^6,
               _124,
               mem[_134]
    if bool(bool(missing_decimals < 78)) or bool(bool(missing_decimals < 32)):
        require ext_code.size(sub_fbc9a844Address)
        staticcall sub_fbc9a844Address.consult() with:
                gas gas_remaining wei
        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(10 * ceil32(return_data.size)) + 100] = collateralReserveAddress
        require ext_code.size(collateralAddress)
        staticcall collateralAddress.0x70a08231 with:
                gas gas_remaining wei
               args collateralReserveAddress
        mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (11 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        idx = 0
        s = 0
        while idx < sub_1189ebea.length:
            mem[0] = 14
            if not sub_1189ebea[idx]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= sub_1189ebea.length:
                revert with 0, 50
            mem[0] = 14
            require ext_code.size(sub_1189ebea[idx])
            staticcall sub_1189ebea[idx].unclaimed_pool_collateral() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _105 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > !mem[_105]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_105]
            continue 
        if ext_call.return_data[0] < s:
            revert with 0, 17
        if ext_call.return_data[0] - s and ext_call.return_data[0] > -1 / ext_call.return_data[0] - s:
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) and 10^missing_decimals > -1 / (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]):
            revert with 0, 17
        require ext_code.size(sub_3e0ca9aaAddress)
        staticcall sub_3e0ca9aaAddress.0xc3355b8d with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _121 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _123 = mem[_121]
        require ext_code.size(sub_3e0ca9aaAddress)
        staticcall sub_3e0ca9aaAddress.0xcb73999f with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _133 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        return ext_call.return_data[0], 
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               (ext_call.return_data[0] * ext_call.return_data[0] * 10^missing_decimals) - (s * ext_call.return_data[0] * 10^missing_decimals) / 10^6,
               _123,
               mem[_133]
    s = 10
    t = 1
    idx = missing_decimals
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    require ext_code.size(sub_fbc9a844Address)
    staticcall sub_fbc9a844Address.consult() with:
            gas gas_remaining wei
    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(10 * ceil32(return_data.size)) + 100] = collateralReserveAddress
    require ext_code.size(collateralAddress)
    staticcall collateralAddress.0x70a08231 with:
            gas gas_remaining wei
           args collateralReserveAddress
    mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (11 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    idx = 0
    u = 0
    while idx < sub_1189ebea.length:
        mem[0] = 14
        if not sub_1189ebea[idx]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = u
            continue 
        if idx >= sub_1189ebea.length:
            revert with 0, 50
        mem[0] = 14
        require ext_code.size(sub_1189ebea[idx])
        staticcall sub_1189ebea[idx].unclaimed_pool_collateral() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _157 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if u > !mem[_157]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        u = u + mem[_157]
        continue 
    if ext_call.return_data[0] < u:
        revert with 0, 17
    if ext_call.return_data[0] - u and ext_call.return_data[0] > -1 / ext_call.return_data[0] - u:
        revert with 0, 17
    if (ext_call.return_data[0] * ext_call.return_data[0]) - (u * ext_call.return_data[0]) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0]) - (u * ext_call.return_data[0]):
        revert with 0, 17
    require ext_code.size(sub_3e0ca9aaAddress)
    staticcall sub_3e0ca9aaAddress.0xc3355b8d with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _161 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _162 = mem[_161]
    require ext_code.size(sub_3e0ca9aaAddress)
    staticcall sub_3e0ca9aaAddress.0xcb73999f with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _165 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    return ext_call.return_data[0], 
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           (ext_call.return_data[0] * ext_call.return_data[0] * s * t) - (u * ext_call.return_data[0] * s * t) / 10^6,
           _162,
           mem[_165]
}



}
