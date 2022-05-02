contract main {




// =====================  Runtime code  =====================


address adminAddress;
address pendingAdminAddress;
address reservesAdminAddress;
address reservesPendingAdminAddress;
address reservesManagerAddress;
mapping of struct lendingPool;
array of address sub_d4071127;
address bDeployerAddress;
address cDeployerAddress;
address sub_34fb08a8Address;

function getLendingPool(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(lendingPool[arg1].field_0), 
           lendingPool[arg1].field_0,
           lendingPool[arg1].field_0,
           lendingPool[arg1].field_256,
           lendingPool[arg1].field_512
}

function pendingAdmin() payable {
    return pendingAdminAddress
}

function reservesManager() payable {
    return reservesManagerAddress
}

function sub_34fb08a8(?) payable {
    return sub_34fb08a8Address
}

function allLendingPoolsLength() payable {
    return sub_d4071127.length
}

function cDeployer() payable {
    return cDeployerAddress
}

function reservesAdmin() payable {
    return reservesAdminAddress
}

function reservesPendingAdmin() payable {
    return reservesPendingAdminAddress
}

function sub_d4071127(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_d4071127.length
    return address(sub_d4071127[arg1])
}

function bDeployer() payable {
    return bDeployerAddress
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function _setPendingAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'Tarot: UNAUTHORIZED'
    pendingAdminAddress = arg1
    emit NewPendingAdmin(pendingAdminAddress, arg1);
}

function _setReservesManager(address arg1) payable {
    require calldata.size - 4 >= 32
    if reservesAdminAddress != msg.sender:
        revert with 0, 'Tarot: UNAUTHORIZED'
    reservesManagerAddress = arg1
    emit NewReservesManager(reservesManagerAddress, arg1);
}

function _setReservesPendingAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if reservesAdminAddress != msg.sender:
        revert with 0, 'Tarot: UNAUTHORIZED'
    reservesPendingAdminAddress = arg1
    emit NewReservesPendingAdmin(reservesPendingAdminAddress, arg1);
}

function _acceptAdmin() payable {
    if pendingAdminAddress != msg.sender:
        revert with 0, 'Tarot: UNAUTHORIZED'
    adminAddress = pendingAdminAddress
    pendingAdminAddress = 0
    emit NewAdmin(adminAddress, pendingAdminAddress);
    emit NewPendingAdmin(pendingAdminAddress, 0);
}

function _acceptReservesAdmin() payable {
    if reservesPendingAdminAddress != msg.sender:
        revert with 0, 'Tarot: UNAUTHORIZED'
    reservesAdminAddress = reservesPendingAdminAddress
    reservesPendingAdminAddress = 0
    emit NewReservesAdmin(reservesAdminAddress, reservesPendingAdminAddress);
    emit NewReservesPendingAdmin(reservesPendingAdminAddress, 0);
}

function createCollateral(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if lendingPool[address(arg1)].field_32:
        revert with 0, 'Tarot: ALREADY_EXISTS'
    require ext_code.size(cDeployerAddress)
    call cDeployerAddress.0x7924fedd with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0])._setFactory() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not lendingPool[address(arg1)].field_8:
        sub_d4071127.length++
        address(sub_d4071127[sub_d4071127.length]) = arg1
        lendingPool[address(arg1)].field_0 = 0
        lendingPool[address(arg1)].field_0 = sub_d4071127.length % 16777216
        lendingPool[address(arg1)].field_24 = 0
        lendingPool[address(arg1)].field_192 = 0
        lendingPool[address(arg1)].field_256 = 0
        lendingPool[address(arg1)].field_256 = 0
        lendingPool[address(arg1)].field_512 = 0
    lendingPool[address(arg1)].field_32 = address(ext_call.return_data[0])
    return address(ext_call.return_data[0])
}

function createBorrowable0(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if lendingPool[address(arg1)].field_256:
        revert with 0, 'Tarot: ALREADY_EXISTS'
    require ext_code.size(bDeployerAddress)
    call bDeployerAddress.0x54bcd7ad with:
         gas gas_remaining wei
        args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0])._setFactory() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not lendingPool[address(arg1)].field_8:
        sub_d4071127.length++
        address(sub_d4071127[sub_d4071127.length]) = arg1
        lendingPool[address(arg1)].field_0 = 0
        lendingPool[address(arg1)].field_0 = sub_d4071127.length % 16777216
        lendingPool[address(arg1)].field_24 = 0
        lendingPool[address(arg1)].field_192 = 0
        lendingPool[address(arg1)].field_256 = 0
        lendingPool[address(arg1)].field_256 = 0
        lendingPool[address(arg1)].field_512 = 0
    lendingPool[address(arg1)].field_256 = address(ext_call.return_data[0])
    return address(ext_call.return_data[0])
}

function createBorrowable1(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if lendingPool[address(arg1)].field_512:
        revert with 0, 'Tarot: ALREADY_EXISTS'
    require ext_code.size(bDeployerAddress)
    call bDeployerAddress.0x54bcd7ad with:
         gas gas_remaining wei
        args address(arg1), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0])._setFactory() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not lendingPool[address(arg1)].field_8:
        sub_d4071127.length++
        address(sub_d4071127[sub_d4071127.length]) = arg1
        lendingPool[address(arg1)].field_0 = 0
        lendingPool[address(arg1)].field_0 = sub_d4071127.length % 16777216
        lendingPool[address(arg1)].field_24 = 0
        lendingPool[address(arg1)].field_192 = 0
        lendingPool[address(arg1)].field_256 = 0
        lendingPool[address(arg1)].field_256 = 0
        lendingPool[address(arg1)].field_512 = 0
    lendingPool[address(arg1)].field_512 = address(ext_call.return_data[0])
    return address(ext_call.return_data[0])
}

function initializeLendingPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if lendingPool[address(arg1)].field_0:
        revert with 0, 'Tarot: ALREADY_INITIALIZED'
    if not lendingPool[address(arg1)].field_32:
        revert with 0, 32, 35, 0xfe5461726f743a20434f4c4c41544552414c495a41424c455f4e4f545f435245415445, mem[519 len 29]
    if not lendingPool[address(arg1)].field_256:
        revert with 0, 'Tarot: BORROWABLE0_NOT_CREATED'
    if not lendingPool[address(arg1)].field_512:
        revert with 0, 'Tarot: BORROWABLE1_NOT_CREATED'
    require ext_code.size(sub_34fb08a8Address)
    staticcall sub_34fb08a8Address.getPair(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    if not ext_call.return_data[160]:
        require ext_code.size(sub_34fb08a8Address)
        call sub_34fb08a8Address.initialize(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(lendingPool[address(arg1)].field_32)
    call lendingPool[address(arg1)].field_32.0xc548e3c5 with:
         gas gas_remaining wei
        args 160, 224, address(arg1), lendingPool[address(arg1)].field_256, lendingPool[address(arg1)].field_512, 16, 0x5461726f7420436f6c6c61746572616c00000000000000000000000000000000, 6, 0x635441524f540000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(lendingPool[address(arg1)].field_256)
    call lendingPool[address(arg1)].field_256.0x6a030c11 with:
         gas gas_remaining wei
        args 128, 192, address(ext_call.return_data[0]), lendingPool[address(arg1)].field_0, 16, 'Tarot Borrowable', 6, 0x625441524f540000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(lendingPool[address(arg1)].field_512)
    call lendingPool[address(arg1)].field_512.0x6a030c11 with:
         gas gas_remaining wei
        args 128, 192, address(ext_call.return_data[0]), lendingPool[address(arg1)].field_0, 16, 'Tarot Borrowable', 6, 0x625441524f540000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    lendingPool[address(arg1)].field_0 = 1
    emit LendingPoolInitialized(lendingPool[address(arg1)].field_0, lendingPool[address(arg1)].field_256, lendingPool[address(arg1)].field_512, lendingPool[address(arg1)].field_8, arg1, address(ext_call.return_data[0]), address(ext_call.return_data[0]));
}



}
