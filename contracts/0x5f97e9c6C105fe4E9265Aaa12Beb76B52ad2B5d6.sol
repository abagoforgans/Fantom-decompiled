contract main {




// =====================  Runtime code  =====================


#
#  - sub_d4db6327(?)
#
const sub_17961faa(?) = 1

const MULTIPLIER = 10^18


address adminAddress;
address pendingAdminAddress;
address controllerImplementationAddress;
uint8 paused; offset 160
uint128 stor3; offset 160
address pendingControllerImplementationAddress;
address coreAddress;
address oracleAddress;
address treasuryAddress;
mapping of struct sub_663b6523;
mapping of struct sub_f75fabb8;

function pendingAdmin() payable {
    return pendingAdminAddress
}

function paused() payable {
    return bool(paused)
}

function treasury() payable {
    return treasuryAddress
}

function sub_663b6523(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(sub_663b6523[arg1].field_0), 
           sub_663b6523[arg1].field_256,
           sub_663b6523[arg1].field_512,
           sub_663b6523[arg1].field_768,
           sub_663b6523[arg1].field_1024,
           sub_663b6523[arg1].field_1280,
           sub_663b6523[arg1].field_1536
}

function oracle() payable {
    return oracleAddress
}

function controllerImplementation() payable {
    return controllerImplementationAddress
}

function pendingControllerImplementation() payable {
    return pendingControllerImplementationAddress
}

function core() payable {
    return coreAddress
}

function sub_f75fabb8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(sub_f75fabb8[arg1].field_0), sub_f75fabb8[arg1].field_256
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function sub_02309846(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
}

function sub_b063dc91(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
}

function sub_f6b2256b(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
}

function sub_8ddd1e58(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
}

function sub_9469db12(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
}

function sub_81865beb(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return 0
}

function sub_b962aaeb(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return 0
}

function sub_c8f8fea5(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return 0
}

function borrowVerify(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
}

function depositVerify(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
}

function withdrawVerify(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
}

function sub_78dd18b8(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
}

function sub_aae3590e(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
}

function sub_c6b4e377(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if sub_f75fabb8[address(arg2)].field_0:
        return 0
    emit Failure(17);
    return 17
}

function _setTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        if controllerImplementationAddress != msg.sender:
            revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
    if not arg1:
        revert with 0, 'Controller: treasury is 0'
    emit AddressChanged(Array(len=8, data='treasury'), treasuryAddress, arg1);
    treasuryAddress = arg1
}

function getPriceUSD(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not oracleAddress:
        return 6, 0
    if not arg1:
        return 7, 0
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0x5708447d with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        return 8, 0
    require return_data.size >= 32
    if ext_call.return_data[0]:
        return 0, ext_call.return_data[0]
    return 9, 0
}

function sub_9b32f93f(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xa0912155 with:
            gas gas_remaining wei
           args address(arg2), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        return 0
    emit Failure(14);
    return 14
}

function sub_e5a75fb0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if adminAddress != msg.sender:
        if controllerImplementationAddress != msg.sender:
            revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
    if not address(arg1):
        revert with 0, 'Controller: collateral is 0'
    emit 0x743971d2: Array(len=9, data='mintLimit'), sub_663b6523[address(arg1)].field_768, arg2
    sub_663b6523[address(arg1)].field_768 = arg2
}

function _setPaused(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        if controllerImplementationAddress != msg.sender:
            revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
    if paused:
        if arg1:
            emit 0x743971d2: Array(len=6, data='paused'), 1, 1
        else:
            emit 0x743971d2: 96, 1, 0, 6, 'paused'
    else:
        if arg1:
            emit 0x743971d2: 96, 0, 1, 6, 'paused'
        else:
            emit 0x743971d2: 96, 0, 0, 6, 'paused'
    stor3 = Mask(96, 0, arg1)
}

function sub_cca6a76f(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xa0912155 with:
            gas gas_remaining wei
           args address(arg3), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        emit Failure(15);
        return 15
    if address(arg2) != address(arg1):
        return 0
    emit Failure(16);
    return 16
}

function sub_3397f498(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if adminAddress != msg.sender:
        if controllerImplementationAddress != msg.sender:
            revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
    if not address(arg1):
        revert with 0, 'Controller: underlying is 0'
    if arg2 > 10^16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controller: stabilizer fee outside bounds'
    emit 0x743971d2: Array(len=13, data='stabilizerFee'), sub_f75fabb8[address(arg1)].field_256, arg2
    sub_f75fabb8[address(arg1)].field_256 = arg2
}

function sub_1c68ec55(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if adminAddress != msg.sender:
        if controllerImplementationAddress != msg.sender:
            revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
    if not address(arg1):
        revert with 0, 'Controller: collateral is 0'
    if arg2 > 25 * 10^16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controller: stability fee outside bounds'
    emit 0x743971d2: Array(len=12, data='stabilityFee'), sub_663b6523[address(arg1)].field_256, arg2
    sub_663b6523[address(arg1)].field_256 = arg2
}

function sub_792da3fd(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if adminAddress != msg.sender:
        if controllerImplementationAddress != msg.sender:
            revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
    if not address(arg1):
        revert with 0, 'Controller: collateral is 0'
    if arg2 > 25 * 10^16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controller: liquidation penalty outside bounds'
    emit 0x743971d2: Array(len=18, data='liquidationPenalty'), sub_663b6523[address(arg1)].field_1280, arg2
    sub_663b6523[address(arg1)].field_1280 = arg2
}

function _become(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0xf851a440 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Controller: !unitroller admin'
    require ext_code.size(arg1)
    call arg1._acceptImplementation() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1775e1bf(?) payable {
    require calldata.size - 4 >= 160
    if arg1 <= arg2:
        return arg5, 0, 0
    if arg1 < arg2:
        revert with 0, 17
    if arg3 and arg1 - arg2 > -1 / arg3:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if (arg1 * arg3) - (arg2 * arg3) / arg1 <= arg4:
        return arg5, 0, (arg1 * arg3) - (arg2 * arg3) / arg1
    if arg5 and arg4 > -1 / arg5:
        revert with 0, 17
    if not (arg1 * arg3) - (arg2 * arg3) / arg1:
        revert with 0, 18
    if arg5 < arg5 * arg4 / (arg1 * arg3) - (arg2 * arg3) / arg1:
        revert with 0, 17
    return arg5 * arg4 / (arg1 * arg3) - (arg2 * arg3) / arg1, arg5 - (arg5 * arg4 / (arg1 * arg3) - (arg2 * arg3) / arg1), arg4
}

function _setOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        if controllerImplementationAddress != msg.sender:
            revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
    require ext_code.size(arg1)
    staticcall arg1.0x8b567a45 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Controller: oracle address is !contract'
    emit AddressChanged(Array(len=6, data='oracle'), oracleAddress, arg1);
    oracleAddress = arg1
}

function sub_cf995aa2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if adminAddress != msg.sender:
        if controllerImplementationAddress != msg.sender:
            revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x83593841 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Controller: core address is !contract'
    emit AddressChanged(Array(len=4, data='core'), coreAddress, address(arg1));
    coreAddress = address(arg1)
}

function sub_50105b6a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if adminAddress != msg.sender:
        if controllerImplementationAddress != msg.sender:
            revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
    if not address(arg1):
        revert with 0, 'Controller: collateral is 0'
    if arg2 < 10^17:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controller: max debt ratio outside bounds'
    if arg2 > 95 * 10^16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controller: max debt ratio outside bounds'
    emit 0x743971d2: Array(len=12, data='maxDebtRatio'), sub_663b6523[address(arg1)].field_512, arg2
    sub_663b6523[address(arg1)].field_512 = arg2
}

function sub_10b0662e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if adminAddress != msg.sender:
        if controllerImplementationAddress != msg.sender:
            revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
    if not address(arg1):
        revert with 0, 'Controller: collateral is 0'
    if sub_663b6523[address(arg1)].field_0:
        if arg2:
            emit 0x743971d2: Array(len=18, data='collateral.allowed'), 1, 1
        else:
            emit 0x743971d2: 96, 1, 0, 18, 'collateral.allowed'
    else:
        if arg2:
            emit 0x743971d2: 96, 0, 1, 18, 'collateral.allowed'
        else:
            emit 0x743971d2: 96, 0, 0, 18, 'collateral.allowed'
    sub_663b6523[address(arg1)].field_0 = uint8(bool(arg2))
}

function sub_9fc33e02(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if adminAddress != msg.sender:
        if controllerImplementationAddress != msg.sender:
            revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
    if not address(arg1):
        revert with 0, 'Controller: underlying is 0'
    if sub_f75fabb8[address(arg1)].field_0:
        if arg2:
            emit 0x743971d2: Array(len=18, data='underlying.allowed'), 1, 1
        else:
            emit 0x743971d2: 96, 1, 0, 18, 'underlying.allowed'
    else:
        if arg2:
            emit 0x743971d2: 96, 0, 1, 18, 'underlying.allowed'
        else:
            emit 0x743971d2: 96, 0, 0, 18, 'underlying.allowed'
    sub_f75fabb8[address(arg1)].field_0 = uint8(bool(arg2))
}

function sub_b9e6b924(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if adminAddress != msg.sender:
        if controllerImplementationAddress != msg.sender:
            revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
    if not address(arg1):
        revert with 0, 'Controller: collateral is 0'
    if arg2 < 600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controller: depreciation duration outside bounds'
    if arg2 > 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controller: depreciation duration outside bounds'
    emit 0x743971d2: Array(len=20, data='depreciationDuration'), sub_663b6523[address(arg1)].field_1536, arg2
    sub_663b6523[address(arg1)].field_1536 = arg2
}

function sub_d552a84f(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not sub_663b6523[address(arg2)].field_0:
        emit Failure(2);
        return 2
    if not sub_663b6523[address(arg2)].field_512:
        emit Failure(3);
        return 3
    if not sub_663b6523[address(arg2)].field_1024:
        emit Failure(4);
        return 4
    if not sub_663b6523[address(arg2)].field_1536:
        emit Failure(5);
        return 5
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xa0912155 with:
            gas gas_remaining wei
           args address(arg2), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        return 0
    emit Failure(14);
    return 14
}

function sub_c43bb1a2(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x768e5b27 with:
            gas gas_remaining wei
           args address(arg2), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if block.timestamp < ext_call.return_data[64]:
        revert with 0, 17
    if arg3 and sub_663b6523[address(arg2)].field_256 > -1 / arg3:
        revert with 0, 17
    if arg3 * sub_663b6523[address(arg2)].field_256 and block.timestamp - ext_call.return_data[64] > -1 / arg3 * sub_663b6523[address(arg2)].field_256:
        revert with 0, 17
    return ((block.timestamp * arg3 * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * arg3 * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600)
}

function sub_2eb70299(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if adminAddress != msg.sender:
        if controllerImplementationAddress != msg.sender:
            revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
    if not address(arg1):
        revert with 0, 'Controller: collateral is 0'
    if not sub_663b6523[address(arg1)].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Controller: cannot initialize liquidation threshold before max debt ratio'
    if 10^16 > !sub_663b6523[address(arg1)].field_512:
        revert with 0, 17
    if arg2 < sub_663b6523[address(arg1)].field_512 + 10^16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controller: liquidation threshold outside bounds'
    if arg2 >= 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controller: liquidation threshold outside bounds'
    emit 0x743971d2: Array(len=20, data='liquidationThreshold'), sub_663b6523[address(arg1)].field_1024, arg2
    sub_663b6523[address(arg1)].field_1024 = arg2
}

function sub_91c1819f(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x768e5b27 with:
            gas gas_remaining wei
           args address(arg2), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[64]:
        return arg3
    if block.timestamp < ext_call.return_data[64]:
        revert with 0, 17
    if sub_663b6523[address(arg2)].field_256 and block.timestamp - ext_call.return_data[64] > -1 / sub_663b6523[address(arg2)].field_256:
        revert with 0, 17
    if 10^18 > !((block.timestamp * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * sub_663b6523[address(arg2)].field_256) / 8760 * 24 * 3600):
        revert with 0, 17
    if arg3 and 10^18 > -1 / arg3:
        revert with 0, 17
    if not ((block.timestamp * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * sub_663b6523[address(arg2)].field_256) / 8760 * 24 * 3600) + 10^18:
        revert with 0, 18
    return (10^18 * arg3 / ((block.timestamp * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * sub_663b6523[address(arg2)].field_256) / 8760 * 24 * 3600) + 10^18)
}

function sub_4aa967b0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x768e5b27 with:
            gas gas_remaining wei
           args address(arg2), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xa0912155 with:
            gas gas_remaining wei
           args address(arg2), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0]:
        return ext_call.return_data[32]
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x768e5b27 with:
            gas gas_remaining wei
           args address(arg2), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if block.timestamp < ext_call.return_data[64]:
        revert with 0, 17
    if ext_call.return_data[32] and sub_663b6523[address(arg2)].field_256 > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256 and block.timestamp - ext_call.return_data[64] > -1 / ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256:
        revert with 0, 17
    if ext_call.return_data[32] > !((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
        revert with 0, 17
    return (ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600))
}

function sub_1eee3aa3(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x768e5b27 with:
            gas gas_remaining wei
           args address(arg2), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if 0 == ext_call.return_data[0]:
        return 0
    if not oracleAddress:
        return 6, 0
    if not address(arg2):
        return 7, 0
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0x5708447d with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        return 8, 0
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 9, 0
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return 0, ext_call.return_data[0] * ext_call.return_data[0]
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not 10^ext_call.return_data[31 len 1]:
            revert with 0, 18
        return 0, ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
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
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    return 0, ext_call.return_data[0] * ext_call.return_data[0] / s * t
}

function borrowAllowed(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x768e5b27 with:
            gas gas_remaining wei
           args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xa0912155 with:
            gas gas_remaining wei
           args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x768e5b27 with:
            gas gas_remaining wei
           args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[0]:
        require ext_code.size(coreAddress)
        staticcall coreAddress.totalMinted(address arg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > !ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[0] + ext_call.return_data[32] < ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[0] > !arg3:
            revert with 0, 17
        if ext_call.return_data[0] + arg3 <= sub_663b6523[address(arg2)].field_768:
            return 0
    else:
        if block.timestamp < ext_call.return_data[64]:
            revert with 0, 17
        if ext_call.return_data[32] and sub_663b6523[address(arg2)].field_256 > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256 and block.timestamp - ext_call.return_data[64] > -1 / ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256:
            revert with 0, 17
        if ext_call.return_data[32] > !((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
            revert with 0, 17
        require ext_code.size(coreAddress)
        staticcall coreAddress.0x768e5b27 with:
                gas gas_remaining wei
               args address(arg2), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(coreAddress)
        staticcall coreAddress.totalMinted(address arg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > !(ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600)):
            revert with 0, 17
        if ext_call.return_data[0] + ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) < ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[0] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) > !arg3:
            revert with 0, 17
        if ext_call.return_data[0] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) + arg3 <= sub_663b6523[address(arg2)].field_768:
            return 0
    emit Failure(11);
    return 11
}

function sub_e4a1cf99(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if msg.sender == adminAddress:
        if ('cd', 36).length != ('cd', 4).length:
            revert with 0, 'Controller: lengths don't match'
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if msg.sender == adminAddress:
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 'Controller: collateral is 0'
                _42 = mem[64]
                mem[mem[64]] = 96
                mem[mem[64] + 96] = 9
                mem[mem[64] + 128] = 'mintLimit'
                mem[mem[64] + 32] = sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_768
                mem[_42 + 64] = cd[((32 * idx) + cd[36] + 36)]
                emit 0x743971d2: mem[mem[64] len _42 + -mem[64] + 160]
            else:
                if controllerImplementationAddress != msg.sender:
                    revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 'Controller: collateral is 0'
                _59 = mem[64]
                mem[mem[64]] = 96
                mem[mem[64] + 96] = 9
                mem[mem[64] + 128] = 'mintLimit'
                mem[mem[64] + 32] = sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_768
                mem[_59 + 64] = cd[((32 * idx) + cd[36] + 36)]
                emit 0x743971d2: mem[mem[64] len _59 + -mem[64] + 160]
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 7
            sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_768 = cd[((32 * idx) + cd[36] + 36)]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if controllerImplementationAddress != msg.sender:
            revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
        if ('cd', 36).length != ('cd', 4).length:
            revert with 0, 'Controller: lengths don't match'
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if msg.sender == adminAddress:
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 'Controller: collateral is 0'
                _50 = mem[64]
                mem[mem[64]] = 96
                mem[mem[64] + 96] = 9
                mem[mem[64] + 128] = 'mintLimit'
                mem[mem[64] + 32] = sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_768
                mem[_50 + 64] = cd[((32 * idx) + cd[36] + 36)]
                emit 0x743971d2: mem[mem[64] len _50 + -mem[64] + 160]
            else:
                if controllerImplementationAddress != msg.sender:
                    revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 'Controller: collateral is 0'
                _66 = mem[64]
                mem[mem[64]] = 96
                mem[mem[64] + 96] = 9
                mem[mem[64] + 128] = 'mintLimit'
                mem[mem[64] + 32] = sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_768
                mem[_66 + 64] = cd[((32 * idx) + cd[36] + 36)]
                emit 0x743971d2: mem[mem[64] len _66 + -mem[64] + 160]
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 7
            sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_768 = cd[((32 * idx) + cd[36] + 36)]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_32c89eab(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if msg.sender == adminAddress:
        if ('cd', 36).length != ('cd', 4).length:
            revert with 0, 'Controller: lengths don't match'
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if msg.sender == adminAddress:
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 'Controller: underlying is 0'
                if cd[((32 * idx) + cd[36] + 36)] > 10^16:
                    revert with 0, 'Controller: stabilizer fee outside bounds'
                _58 = mem[64]
                mem[mem[64]] = 96
                mem[mem[64] + 96] = 13
                mem[mem[64] + 128] = 'stabilizerFee'
                mem[mem[64] + 32] = sub_f75fabb8[address(cd[((32 * idx) + cd[4] + 36)])].field_256
                mem[_58 + 64] = cd[((32 * idx) + cd[36] + 36)]
                emit 0x743971d2: mem[mem[64] len _58 + -mem[64] + 160]
            else:
                if controllerImplementationAddress != msg.sender:
                    revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 'Controller: underlying is 0'
                if cd[((32 * idx) + cd[36] + 36)] > 10^16:
                    revert with 0, 'Controller: stabilizer fee outside bounds'
                _75 = mem[64]
                mem[mem[64]] = 96
                mem[mem[64] + 96] = 13
                mem[mem[64] + 128] = 'stabilizerFee'
                mem[mem[64] + 32] = sub_f75fabb8[address(cd[((32 * idx) + cd[4] + 36)])].field_256
                mem[_75 + 64] = cd[((32 * idx) + cd[36] + 36)]
                emit 0x743971d2: mem[mem[64] len _75 + -mem[64] + 160]
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 8
            sub_f75fabb8[address(cd[((32 * idx) + cd[4] + 36)])].field_256 = cd[((32 * idx) + cd[36] + 36)]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if controllerImplementationAddress != msg.sender:
            revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
        if ('cd', 36).length != ('cd', 4).length:
            revert with 0, 'Controller: lengths don't match'
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if msg.sender == adminAddress:
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 'Controller: underlying is 0'
                if cd[((32 * idx) + cd[36] + 36)] > 10^16:
                    revert with 0, 'Controller: stabilizer fee outside bounds'
                _66 = mem[64]
                mem[mem[64]] = 96
                mem[mem[64] + 96] = 13
                mem[mem[64] + 128] = 'stabilizerFee'
                mem[mem[64] + 32] = sub_f75fabb8[address(cd[((32 * idx) + cd[4] + 36)])].field_256
                mem[_66 + 64] = cd[((32 * idx) + cd[36] + 36)]
                emit 0x743971d2: mem[mem[64] len _66 + -mem[64] + 160]
            else:
                if controllerImplementationAddress != msg.sender:
                    revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 'Controller: underlying is 0'
                if cd[((32 * idx) + cd[36] + 36)] > 10^16:
                    revert with 0, 'Controller: stabilizer fee outside bounds'
                _82 = mem[64]
                mem[mem[64]] = 96
                mem[mem[64] + 96] = 13
                mem[mem[64] + 128] = 'stabilizerFee'
                mem[mem[64] + 32] = sub_f75fabb8[address(cd[((32 * idx) + cd[4] + 36)])].field_256
                mem[_82 + 64] = cd[((32 * idx) + cd[36] + 36)]
                emit 0x743971d2: mem[mem[64] len _82 + -mem[64] + 160]
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 8
            sub_f75fabb8[address(cd[((32 * idx) + cd[4] + 36)])].field_256 = cd[((32 * idx) + cd[36] + 36)]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_aad01978(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if msg.sender == adminAddress:
        if ('cd', 36).length != ('cd', 4).length:
            revert with 0, 'Controller: lengths don't match'
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if msg.sender == adminAddress:
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 'Controller: collateral is 0'
                if cd[((32 * idx) + cd[36] + 36)] > 25 * 10^16:
                    revert with 0, 'Controller: stability fee outside bounds'
                _58 = mem[64]
                mem[mem[64]] = 96
                mem[mem[64] + 96] = 12
                mem[mem[64] + 128] = 'stabilityFee'
                mem[mem[64] + 32] = sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_256
                mem[_58 + 64] = cd[((32 * idx) + cd[36] + 36)]
                emit 0x743971d2: mem[mem[64] len _58 + -mem[64] + 160]
            else:
                if controllerImplementationAddress != msg.sender:
                    revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 'Controller: collateral is 0'
                if cd[((32 * idx) + cd[36] + 36)] > 25 * 10^16:
                    revert with 0, 'Controller: stability fee outside bounds'
                _75 = mem[64]
                mem[mem[64]] = 96
                mem[mem[64] + 96] = 12
                mem[mem[64] + 128] = 'stabilityFee'
                mem[mem[64] + 32] = sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_256
                mem[_75 + 64] = cd[((32 * idx) + cd[36] + 36)]
                emit 0x743971d2: mem[mem[64] len _75 + -mem[64] + 160]
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 7
            sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_256 = cd[((32 * idx) + cd[36] + 36)]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if controllerImplementationAddress != msg.sender:
            revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
        if ('cd', 36).length != ('cd', 4).length:
            revert with 0, 'Controller: lengths don't match'
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if msg.sender == adminAddress:
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 'Controller: collateral is 0'
                if cd[((32 * idx) + cd[36] + 36)] > 25 * 10^16:
                    revert with 0, 'Controller: stability fee outside bounds'
                _66 = mem[64]
                mem[mem[64]] = 96
                mem[mem[64] + 96] = 12
                mem[mem[64] + 128] = 'stabilityFee'
                mem[mem[64] + 32] = sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_256
                mem[_66 + 64] = cd[((32 * idx) + cd[36] + 36)]
                emit 0x743971d2: mem[mem[64] len _66 + -mem[64] + 160]
            else:
                if controllerImplementationAddress != msg.sender:
                    revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 'Controller: collateral is 0'
                if cd[((32 * idx) + cd[36] + 36)] > 25 * 10^16:
                    revert with 0, 'Controller: stability fee outside bounds'
                _82 = mem[64]
                mem[mem[64]] = 96
                mem[mem[64] + 96] = 12
                mem[mem[64] + 128] = 'stabilityFee'
                mem[mem[64] + 32] = sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_256
                mem[_82 + 64] = cd[((32 * idx) + cd[36] + 36)]
                emit 0x743971d2: mem[mem[64] len _82 + -mem[64] + 160]
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 7
            sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_256 = cd[((32 * idx) + cd[36] + 36)]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_13dbb21f(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if msg.sender == adminAddress:
        if ('cd', 36).length != ('cd', 4).length:
            revert with 0, 'Controller: lengths don't match'
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if msg.sender == adminAddress:
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 'Controller: collateral is 0'
                if cd[((32 * idx) + cd[36] + 36)] > 25 * 10^16:
                    revert with 0, 'Controller: liquidation penalty outside bounds'
                _58 = mem[64]
                mem[mem[64]] = 96
                mem[mem[64] + 96] = 18
                mem[mem[64] + 128] = 'liquidationPenalty'
                mem[mem[64] + 32] = sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_1280
                mem[_58 + 64] = cd[((32 * idx) + cd[36] + 36)]
                emit 0x743971d2: mem[mem[64] len _58 + -mem[64] + 160]
            else:
                if controllerImplementationAddress != msg.sender:
                    revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 'Controller: collateral is 0'
                if cd[((32 * idx) + cd[36] + 36)] > 25 * 10^16:
                    revert with 0, 'Controller: liquidation penalty outside bounds'
                _75 = mem[64]
                mem[mem[64]] = 96
                mem[mem[64] + 96] = 18
                mem[mem[64] + 128] = 'liquidationPenalty'
                mem[mem[64] + 32] = sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_1280
                mem[_75 + 64] = cd[((32 * idx) + cd[36] + 36)]
                emit 0x743971d2: mem[mem[64] len _75 + -mem[64] + 160]
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 7
            sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_1280 = cd[((32 * idx) + cd[36] + 36)]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if controllerImplementationAddress != msg.sender:
            revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
        if ('cd', 36).length != ('cd', 4).length:
            revert with 0, 'Controller: lengths don't match'
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if msg.sender == adminAddress:
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 'Controller: collateral is 0'
                if cd[((32 * idx) + cd[36] + 36)] > 25 * 10^16:
                    revert with 0, 'Controller: liquidation penalty outside bounds'
                _66 = mem[64]
                mem[mem[64]] = 96
                mem[mem[64] + 96] = 18
                mem[mem[64] + 128] = 'liquidationPenalty'
                mem[mem[64] + 32] = sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_1280
                mem[_66 + 64] = cd[((32 * idx) + cd[36] + 36)]
                emit 0x743971d2: mem[mem[64] len _66 + -mem[64] + 160]
            else:
                if controllerImplementationAddress != msg.sender:
                    revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 'Controller: collateral is 0'
                if cd[((32 * idx) + cd[36] + 36)] > 25 * 10^16:
                    revert with 0, 'Controller: liquidation penalty outside bounds'
                _82 = mem[64]
                mem[mem[64]] = 96
                mem[mem[64] + 96] = 18
                mem[mem[64] + 128] = 'liquidationPenalty'
                mem[mem[64] + 32] = sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_1280
                mem[_82 + 64] = cd[((32 * idx) + cd[36] + 36)]
                emit 0x743971d2: mem[mem[64] len _82 + -mem[64] + 160]
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 7
            sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_1280 = cd[((32 * idx) + cd[36] + 36)]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_2decbe54(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if msg.sender == adminAddress:
        if ('cd', 36).length != ('cd', 4).length:
            revert with 0, 'Controller: lengths don't match'
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if msg.sender == adminAddress:
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 'Controller: collateral is 0'
                if cd[((32 * idx) + cd[36] + 36)] < 10^17:
                    revert with 0, 'Controller: max debt ratio outside bounds'
                if cd[((32 * idx) + cd[36] + 36)] > 95 * 10^16:
                    revert with 0, 'Controller: max debt ratio outside bounds'
                _77 = mem[64]
                mem[mem[64]] = 96
                mem[mem[64] + 96] = 12
                mem[mem[64] + 128] = 'maxDebtRatio'
                mem[mem[64] + 32] = sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_512
                mem[_77 + 64] = cd[((32 * idx) + cd[36] + 36)]
                emit 0x743971d2: mem[mem[64] len _77 + -mem[64] + 160]
            else:
                if controllerImplementationAddress != msg.sender:
                    revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 'Controller: collateral is 0'
                if cd[((32 * idx) + cd[36] + 36)] < 10^17:
                    revert with 0, 'Controller: max debt ratio outside bounds'
                if cd[((32 * idx) + cd[36] + 36)] > 95 * 10^16:
                    revert with 0, 'Controller: max debt ratio outside bounds'
                _92 = mem[64]
                mem[mem[64]] = 96
                mem[mem[64] + 96] = 12
                mem[mem[64] + 128] = 'maxDebtRatio'
                mem[mem[64] + 32] = sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_512
                mem[_92 + 64] = cd[((32 * idx) + cd[36] + 36)]
                emit 0x743971d2: mem[mem[64] len _92 + -mem[64] + 160]
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 7
            sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_512 = cd[((32 * idx) + cd[36] + 36)]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if controllerImplementationAddress != msg.sender:
            revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
        if ('cd', 36).length != ('cd', 4).length:
            revert with 0, 'Controller: lengths don't match'
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if msg.sender == adminAddress:
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 'Controller: collateral is 0'
                if cd[((32 * idx) + cd[36] + 36)] < 10^17:
                    revert with 0, 'Controller: max debt ratio outside bounds'
                if cd[((32 * idx) + cd[36] + 36)] > 95 * 10^16:
                    revert with 0, 'Controller: max debt ratio outside bounds'
                _84 = mem[64]
                mem[mem[64]] = 96
                mem[mem[64] + 96] = 12
                mem[mem[64] + 128] = 'maxDebtRatio'
                mem[mem[64] + 32] = sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_512
                mem[_84 + 64] = cd[((32 * idx) + cd[36] + 36)]
                emit 0x743971d2: mem[mem[64] len _84 + -mem[64] + 160]
            else:
                if controllerImplementationAddress != msg.sender:
                    revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 'Controller: collateral is 0'
                if cd[((32 * idx) + cd[36] + 36)] < 10^17:
                    revert with 0, 'Controller: max debt ratio outside bounds'
                if cd[((32 * idx) + cd[36] + 36)] > 95 * 10^16:
                    revert with 0, 'Controller: max debt ratio outside bounds'
                _99 = mem[64]
                mem[mem[64]] = 96
                mem[mem[64] + 96] = 12
                mem[mem[64] + 128] = 'maxDebtRatio'
                mem[mem[64] + 32] = sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_512
                mem[_99 + 64] = cd[((32 * idx) + cd[36] + 36)]
                emit 0x743971d2: mem[mem[64] len _99 + -mem[64] + 160]
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 7
            sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_512 = cd[((32 * idx) + cd[36] + 36)]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_74288e5d(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if msg.sender == adminAddress:
        if ('cd', 36).length != ('cd', 4).length:
            revert with 0, 'Controller: lengths don't match'
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if msg.sender == adminAddress:
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 'Controller: collateral is 0'
                if cd[((32 * idx) + cd[36] + 36)] < 600:
                    revert with 0, 'Controller: depreciation duration outside bounds'
                if cd[((32 * idx) + cd[36] + 36)] > 3600:
                    revert with 0, 'Controller: depreciation duration outside bounds'
                _77 = mem[64]
                mem[mem[64]] = 96
                mem[mem[64] + 96] = 20
                mem[mem[64] + 128] = 'depreciationDuration'
                mem[mem[64] + 32] = sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_1536
                mem[_77 + 64] = cd[((32 * idx) + cd[36] + 36)]
                emit 0x743971d2: mem[mem[64] len _77 + -mem[64] + 160]
            else:
                if controllerImplementationAddress != msg.sender:
                    revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 'Controller: collateral is 0'
                if cd[((32 * idx) + cd[36] + 36)] < 600:
                    revert with 0, 'Controller: depreciation duration outside bounds'
                if cd[((32 * idx) + cd[36] + 36)] > 3600:
                    revert with 0, 'Controller: depreciation duration outside bounds'
                _92 = mem[64]
                mem[mem[64]] = 96
                mem[mem[64] + 96] = 20
                mem[mem[64] + 128] = 'depreciationDuration'
                mem[mem[64] + 32] = sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_1536
                mem[_92 + 64] = cd[((32 * idx) + cd[36] + 36)]
                emit 0x743971d2: mem[mem[64] len _92 + -mem[64] + 160]
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 7
            sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_1536 = cd[((32 * idx) + cd[36] + 36)]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if controllerImplementationAddress != msg.sender:
            revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
        if ('cd', 36).length != ('cd', 4).length:
            revert with 0, 'Controller: lengths don't match'
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if msg.sender == adminAddress:
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 'Controller: collateral is 0'
                if cd[((32 * idx) + cd[36] + 36)] < 600:
                    revert with 0, 'Controller: depreciation duration outside bounds'
                if cd[((32 * idx) + cd[36] + 36)] > 3600:
                    revert with 0, 'Controller: depreciation duration outside bounds'
                _84 = mem[64]
                mem[mem[64]] = 96
                mem[mem[64] + 96] = 20
                mem[mem[64] + 128] = 'depreciationDuration'
                mem[mem[64] + 32] = sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_1536
                mem[_84 + 64] = cd[((32 * idx) + cd[36] + 36)]
                emit 0x743971d2: mem[mem[64] len _84 + -mem[64] + 160]
            else:
                if controllerImplementationAddress != msg.sender:
                    revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 'Controller: collateral is 0'
                if cd[((32 * idx) + cd[36] + 36)] < 600:
                    revert with 0, 'Controller: depreciation duration outside bounds'
                if cd[((32 * idx) + cd[36] + 36)] > 3600:
                    revert with 0, 'Controller: depreciation duration outside bounds'
                _99 = mem[64]
                mem[mem[64]] = 96
                mem[mem[64] + 96] = 20
                mem[mem[64] + 128] = 'depreciationDuration'
                mem[mem[64] + 32] = sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_1536
                mem[_99 + 64] = cd[((32 * idx) + cd[36] + 36)]
                emit 0x743971d2: mem[mem[64] len _99 + -mem[64] + 160]
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 7
            sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_1536 = cd[((32 * idx) + cd[36] + 36)]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_5f50aecb(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not sub_f75fabb8[address(arg2)].field_0:
        emit Failure(17);
        return 17
    if arg3 and sub_f75fabb8[address(arg2)].field_256 > -1 / arg3:
        revert with 0, 17
    if arg3 < arg3 * sub_f75fabb8[address(arg2)].field_256 / 10^18:
        revert with 0, 17
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if ext_call.return_data[31 len 1] > 18:
        if ext_call.return_data[31 len 1] < 18:
            revert with 0, 17
        if not ext_call.return_data[31 len 1] - 18:
            if arg3 - (arg3 * sub_f75fabb8[address(arg2)].field_256 / 10^18) and 1 > -1 / arg3 - (arg3 * sub_f75fabb8[address(arg2)].field_256 / 10^18):
                revert with 0, 17
            require ext_code.size(coreAddress)
            staticcall coreAddress.0x3e9fa81a with:
                    gas gas_remaining wei
                   args address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg3 - (arg3 * sub_f75fabb8[address(arg2)].field_256 / 10^18) <= ext_call.return_data[0]:
                return 0
        else:
            if bool(bool(ext_call.return_data[31 len 1] - 18 < 78)) or bool(bool(ext_call.return_data[31 len 1] - 18 < 32)):
                if arg3 - (arg3 * sub_f75fabb8[address(arg2)].field_256 / 10^18) and 10^(ext_call.return_data[31 len 1] - 18) > -1 / arg3 - (arg3 * sub_f75fabb8[address(arg2)].field_256 / 10^18):
                    revert with 0, 17
                require ext_code.size(coreAddress)
                staticcall coreAddress.0x3e9fa81a with:
                        gas gas_remaining wei
                       args address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (arg3 * 10^(uint8(ext_call.return_data[0]) - 18)) - (arg3 * sub_f75fabb8[address(arg2)].field_256 / 10^18 * 10^(uint8(ext_call.return_data[0]) - 18)) <= ext_call.return_data[0]:
                    return 0
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1] - 18
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
                if arg3 - (arg3 * sub_f75fabb8[address(arg2)].field_256 / 10^18) and s * t > -1 / arg3 - (arg3 * sub_f75fabb8[address(arg2)].field_256 / 10^18):
                    revert with 0, 17
                require ext_code.size(coreAddress)
                staticcall coreAddress.0x3e9fa81a with:
                        gas gas_remaining wei
                       args address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (arg3 * s * t) - (arg3 * sub_f75fabb8[address(arg2)].field_256 / 10^18 * s * t) <= ext_call.return_data[0]:
                    return 0
    else:
        if 18 < ext_call.return_data[31 len 1]:
            revert with 0, 17
        if not -ext_call.return_data[31 len 1] + 18:
            require ext_code.size(coreAddress)
            staticcall coreAddress.0x3e9fa81a with:
                    gas gas_remaining wei
                   args address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg3 - (arg3 * sub_f75fabb8[address(arg2)].field_256 / 10^18) <= ext_call.return_data[0]:
                return 0
        else:
            if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
                if not 10^(-ext_call.return_data[31 len 1] + 18):
                    revert with 0, 18
                require ext_code.size(coreAddress)
                staticcall coreAddress.0x3e9fa81a with:
                        gas gas_remaining wei
                       args address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg3 - (arg3 * sub_f75fabb8[address(arg2)].field_256 / 10^18) / 10^(-uint8(ext_call.return_data[0]) + 18) <= ext_call.return_data[0]:
                    return 0
            else:
                s = 10
                t = 1
                idx = -ext_call.return_data[31 len 1] + 18
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
                if not s * t:
                    revert with 0, 18
                require ext_code.size(coreAddress)
                staticcall coreAddress.0x3e9fa81a with:
                        gas gas_remaining wei
                       args address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg3 - (arg3 * sub_f75fabb8[address(arg2)].field_256 / 10^18) / s * t <= ext_call.return_data[0]:
                    return 0
    emit Failure(18);
    return 18
}

function sub_a05ead7a(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if msg.sender == adminAddress:
        if ('cd', 36).length != ('cd', 4).length:
            revert with 0, 'Controller: lengths don't match'
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if msg.sender == adminAddress:
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 'Controller: collateral is 0'
                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                if not sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_512:
                    revert with 0, 'Controller: cannot initialize liquidation threshold before max debt ratio'
                if 10^16 > !sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_512:
                    revert with 0, 17
                if cd[((32 * idx) + cd[36] + 36)] < sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_512 + 10^16:
                    revert with 0, 'Controller: liquidation threshold outside bounds'
                if cd[((32 * idx) + cd[36] + 36)] >= 10^18:
                    revert with 0, 'Controller: liquidation threshold outside bounds'
                _101 = mem[64]
                mem[mem[64]] = 96
                mem[mem[64] + 96] = 20
                mem[mem[64] + 128] = 'liquidationThreshold'
                mem[mem[64] + 32] = sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_1024
                mem[_101 + 64] = cd[((32 * idx) + cd[36] + 36)]
                emit 0x743971d2: mem[mem[64] len _101 + -mem[64] + 160]
            else:
                if controllerImplementationAddress != msg.sender:
                    revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 'Controller: collateral is 0'
                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                if not sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_512:
                    revert with 0, 'Controller: cannot initialize liquidation threshold before max debt ratio'
                if 10^16 > !sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_512:
                    revert with 0, 17
                if cd[((32 * idx) + cd[36] + 36)] < sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_512 + 10^16:
                    revert with 0, 'Controller: liquidation threshold outside bounds'
                if cd[((32 * idx) + cd[36] + 36)] >= 10^18:
                    revert with 0, 'Controller: liquidation threshold outside bounds'
                _116 = mem[64]
                mem[mem[64]] = 96
                mem[mem[64] + 96] = 20
                mem[mem[64] + 128] = 'liquidationThreshold'
                mem[mem[64] + 32] = sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_1024
                mem[_116 + 64] = cd[((32 * idx) + cd[36] + 36)]
                emit 0x743971d2: mem[mem[64] len _116 + -mem[64] + 160]
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 7
            sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_1024 = cd[((32 * idx) + cd[36] + 36)]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if controllerImplementationAddress != msg.sender:
            revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
        if ('cd', 36).length != ('cd', 4).length:
            revert with 0, 'Controller: lengths don't match'
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if msg.sender == adminAddress:
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 'Controller: collateral is 0'
                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                if not sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_512:
                    revert with 0, 'Controller: cannot initialize liquidation threshold before max debt ratio'
                if 10^16 > !sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_512:
                    revert with 0, 17
                if cd[((32 * idx) + cd[36] + 36)] < sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_512 + 10^16:
                    revert with 0, 'Controller: liquidation threshold outside bounds'
                if cd[((32 * idx) + cd[36] + 36)] >= 10^18:
                    revert with 0, 'Controller: liquidation threshold outside bounds'
                _108 = mem[64]
                mem[mem[64]] = 96
                mem[mem[64] + 96] = 20
                mem[mem[64] + 128] = 'liquidationThreshold'
                mem[mem[64] + 32] = sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_1024
                mem[_108 + 64] = cd[((32 * idx) + cd[36] + 36)]
                emit 0x743971d2: mem[mem[64] len _108 + -mem[64] + 160]
            else:
                if controllerImplementationAddress != msg.sender:
                    revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 'Controller: collateral is 0'
                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                if not sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_512:
                    revert with 0, 'Controller: cannot initialize liquidation threshold before max debt ratio'
                if 10^16 > !sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_512:
                    revert with 0, 17
                if cd[((32 * idx) + cd[36] + 36)] < sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_512 + 10^16:
                    revert with 0, 'Controller: liquidation threshold outside bounds'
                if cd[((32 * idx) + cd[36] + 36)] >= 10^18:
                    revert with 0, 'Controller: liquidation threshold outside bounds'
                _123 = mem[64]
                mem[mem[64]] = 96
                mem[mem[64] + 96] = 20
                mem[mem[64] + 128] = 'liquidationThreshold'
                mem[mem[64] + 32] = sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_1024
                mem[_123 + 64] = cd[((32 * idx) + cd[36] + 36)]
                emit 0x743971d2: mem[mem[64] len _123 + -mem[64] + 160]
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 7
            sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_1024 = cd[((32 * idx) + cd[36] + 36)]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_7c70c6b8(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if msg.sender == adminAddress:
        if ('cd', 36).length != ('cd', 4).length:
            revert with 0, 'Controller: lengths don't match'
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[36] + 36)] == bool(cd[((32 * idx) + cd[36] + 36)])
            if msg.sender == adminAddress:
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 'Controller: collateral is 0'
                if sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                    if cd[((32 * idx) + cd[36] + 36)]:
                        _97 = mem[64]
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = 18
                        mem[mem[64] + 128] = 'collateral.allowed'
                        mem[mem[64] + 32] = 1
                        mem[_97 + 64] = 1
                        emit 0x743971d2: mem[mem[64] len _97 + -mem[64] + 160]
                    else:
                        _100 = mem[64]
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = 18
                        mem[mem[64] + 128] = 'collateral.allowed'
                        mem[mem[64] + 32] = 1
                        mem[_100 + 64] = 0
                        emit 0x743971d2: mem[mem[64] len _100 + -mem[64] + 160]
                else:
                    if cd[((32 * idx) + cd[36] + 36)]:
                        _103 = mem[64]
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = 18
                        mem[mem[64] + 128] = 'collateral.allowed'
                        mem[mem[64] + 32] = 0
                        mem[_103 + 64] = 1
                        emit 0x743971d2: mem[mem[64] len _103 + -mem[64] + 160]
                    else:
                        _106 = mem[64]
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = 18
                        mem[mem[64] + 128] = 'collateral.allowed'
                        mem[mem[64] + 32] = 0
                        mem[_106 + 64] = 0
                        emit 0x743971d2: mem[mem[64] len _106 + -mem[64] + 160]
            else:
                if controllerImplementationAddress != msg.sender:
                    revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 'Controller: collateral is 0'
                if sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                    if cd[((32 * idx) + cd[36] + 36)]:
                        _121 = mem[64]
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = 18
                        mem[mem[64] + 128] = 'collateral.allowed'
                        mem[mem[64] + 32] = 1
                        mem[_121 + 64] = 1
                        emit 0x743971d2: mem[mem[64] len _121 + -mem[64] + 160]
                    else:
                        _124 = mem[64]
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = 18
                        mem[mem[64] + 128] = 'collateral.allowed'
                        mem[mem[64] + 32] = 1
                        mem[_124 + 64] = 0
                        emit 0x743971d2: mem[mem[64] len _124 + -mem[64] + 160]
                else:
                    if cd[((32 * idx) + cd[36] + 36)]:
                        _127 = mem[64]
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = 18
                        mem[mem[64] + 128] = 'collateral.allowed'
                        mem[mem[64] + 32] = 0
                        mem[_127 + 64] = 1
                        emit 0x743971d2: mem[mem[64] len _127 + -mem[64] + 160]
                    else:
                        _130 = mem[64]
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = 18
                        mem[mem[64] + 128] = 'collateral.allowed'
                        mem[mem[64] + 32] = 0
                        mem[_130 + 64] = 0
                        emit 0x743971d2: mem[mem[64] len _130 + -mem[64] + 160]
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 7
            sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_0 = uint8(bool(cd[((32 * idx) + cd[36] + 36)]))
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if controllerImplementationAddress != msg.sender:
            revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
        if ('cd', 36).length != ('cd', 4).length:
            revert with 0, 'Controller: lengths don't match'
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[36] + 36)] == bool(cd[((32 * idx) + cd[36] + 36)])
            if msg.sender == adminAddress:
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 'Controller: collateral is 0'
                if sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                    if cd[((32 * idx) + cd[36] + 36)]:
                        _109 = mem[64]
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = 18
                        mem[mem[64] + 128] = 'collateral.allowed'
                        mem[mem[64] + 32] = 1
                        mem[_109 + 64] = 1
                        emit 0x743971d2: mem[mem[64] len _109 + -mem[64] + 160]
                    else:
                        _112 = mem[64]
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = 18
                        mem[mem[64] + 128] = 'collateral.allowed'
                        mem[mem[64] + 32] = 1
                        mem[_112 + 64] = 0
                        emit 0x743971d2: mem[mem[64] len _112 + -mem[64] + 160]
                else:
                    if cd[((32 * idx) + cd[36] + 36)]:
                        _115 = mem[64]
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = 18
                        mem[mem[64] + 128] = 'collateral.allowed'
                        mem[mem[64] + 32] = 0
                        mem[_115 + 64] = 1
                        emit 0x743971d2: mem[mem[64] len _115 + -mem[64] + 160]
                    else:
                        _118 = mem[64]
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = 18
                        mem[mem[64] + 128] = 'collateral.allowed'
                        mem[mem[64] + 32] = 0
                        mem[_118 + 64] = 0
                        emit 0x743971d2: mem[mem[64] len _118 + -mem[64] + 160]
            else:
                if controllerImplementationAddress != msg.sender:
                    revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 'Controller: collateral is 0'
                if sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                    if cd[((32 * idx) + cd[36] + 36)]:
                        _133 = mem[64]
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = 18
                        mem[mem[64] + 128] = 'collateral.allowed'
                        mem[mem[64] + 32] = 1
                        mem[_133 + 64] = 1
                        emit 0x743971d2: mem[mem[64] len _133 + -mem[64] + 160]
                    else:
                        _136 = mem[64]
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = 18
                        mem[mem[64] + 128] = 'collateral.allowed'
                        mem[mem[64] + 32] = 1
                        mem[_136 + 64] = 0
                        emit 0x743971d2: mem[mem[64] len _136 + -mem[64] + 160]
                else:
                    if cd[((32 * idx) + cd[36] + 36)]:
                        _139 = mem[64]
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = 18
                        mem[mem[64] + 128] = 'collateral.allowed'
                        mem[mem[64] + 32] = 0
                        mem[_139 + 64] = 1
                        emit 0x743971d2: mem[mem[64] len _139 + -mem[64] + 160]
                    else:
                        _142 = mem[64]
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = 18
                        mem[mem[64] + 128] = 'collateral.allowed'
                        mem[mem[64] + 32] = 0
                        mem[_142 + 64] = 0
                        emit 0x743971d2: mem[mem[64] len _142 + -mem[64] + 160]
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 7
            sub_663b6523[address(cd[((32 * idx) + cd[4] + 36)])].field_0 = uint8(bool(cd[((32 * idx) + cd[36] + 36)]))
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_d1225687(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if msg.sender == adminAddress:
        if ('cd', 36).length != ('cd', 4).length:
            revert with 0, 'Controller: lengths don't match'
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[36] + 36)] == bool(cd[((32 * idx) + cd[36] + 36)])
            if msg.sender == adminAddress:
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 'Controller: underlying is 0'
                if sub_f75fabb8[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                    if cd[((32 * idx) + cd[36] + 36)]:
                        _97 = mem[64]
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = 18
                        mem[mem[64] + 128] = 'underlying.allowed'
                        mem[mem[64] + 32] = 1
                        mem[_97 + 64] = 1
                        emit 0x743971d2: mem[mem[64] len _97 + -mem[64] + 160]
                    else:
                        _100 = mem[64]
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = 18
                        mem[mem[64] + 128] = 'underlying.allowed'
                        mem[mem[64] + 32] = 1
                        mem[_100 + 64] = 0
                        emit 0x743971d2: mem[mem[64] len _100 + -mem[64] + 160]
                else:
                    if cd[((32 * idx) + cd[36] + 36)]:
                        _103 = mem[64]
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = 18
                        mem[mem[64] + 128] = 'underlying.allowed'
                        mem[mem[64] + 32] = 0
                        mem[_103 + 64] = 1
                        emit 0x743971d2: mem[mem[64] len _103 + -mem[64] + 160]
                    else:
                        _106 = mem[64]
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = 18
                        mem[mem[64] + 128] = 'underlying.allowed'
                        mem[mem[64] + 32] = 0
                        mem[_106 + 64] = 0
                        emit 0x743971d2: mem[mem[64] len _106 + -mem[64] + 160]
            else:
                if controllerImplementationAddress != msg.sender:
                    revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 'Controller: underlying is 0'
                if sub_f75fabb8[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                    if cd[((32 * idx) + cd[36] + 36)]:
                        _121 = mem[64]
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = 18
                        mem[mem[64] + 128] = 'underlying.allowed'
                        mem[mem[64] + 32] = 1
                        mem[_121 + 64] = 1
                        emit 0x743971d2: mem[mem[64] len _121 + -mem[64] + 160]
                    else:
                        _124 = mem[64]
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = 18
                        mem[mem[64] + 128] = 'underlying.allowed'
                        mem[mem[64] + 32] = 1
                        mem[_124 + 64] = 0
                        emit 0x743971d2: mem[mem[64] len _124 + -mem[64] + 160]
                else:
                    if cd[((32 * idx) + cd[36] + 36)]:
                        _127 = mem[64]
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = 18
                        mem[mem[64] + 128] = 'underlying.allowed'
                        mem[mem[64] + 32] = 0
                        mem[_127 + 64] = 1
                        emit 0x743971d2: mem[mem[64] len _127 + -mem[64] + 160]
                    else:
                        _130 = mem[64]
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = 18
                        mem[mem[64] + 128] = 'underlying.allowed'
                        mem[mem[64] + 32] = 0
                        mem[_130 + 64] = 0
                        emit 0x743971d2: mem[mem[64] len _130 + -mem[64] + 160]
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 8
            sub_f75fabb8[address(cd[((32 * idx) + cd[4] + 36)])].field_0 = uint8(bool(cd[((32 * idx) + cd[36] + 36)]))
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if controllerImplementationAddress != msg.sender:
            revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
        if ('cd', 36).length != ('cd', 4).length:
            revert with 0, 'Controller: lengths don't match'
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[36] + 36)] == bool(cd[((32 * idx) + cd[36] + 36)])
            if msg.sender == adminAddress:
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 'Controller: underlying is 0'
                if sub_f75fabb8[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                    if cd[((32 * idx) + cd[36] + 36)]:
                        _109 = mem[64]
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = 18
                        mem[mem[64] + 128] = 'underlying.allowed'
                        mem[mem[64] + 32] = 1
                        mem[_109 + 64] = 1
                        emit 0x743971d2: mem[mem[64] len _109 + -mem[64] + 160]
                    else:
                        _112 = mem[64]
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = 18
                        mem[mem[64] + 128] = 'underlying.allowed'
                        mem[mem[64] + 32] = 1
                        mem[_112 + 64] = 0
                        emit 0x743971d2: mem[mem[64] len _112 + -mem[64] + 160]
                else:
                    if cd[((32 * idx) + cd[36] + 36)]:
                        _115 = mem[64]
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = 18
                        mem[mem[64] + 128] = 'underlying.allowed'
                        mem[mem[64] + 32] = 0
                        mem[_115 + 64] = 1
                        emit 0x743971d2: mem[mem[64] len _115 + -mem[64] + 160]
                    else:
                        _118 = mem[64]
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = 18
                        mem[mem[64] + 128] = 'underlying.allowed'
                        mem[mem[64] + 32] = 0
                        mem[_118 + 64] = 0
                        emit 0x743971d2: mem[mem[64] len _118 + -mem[64] + 160]
            else:
                if controllerImplementationAddress != msg.sender:
                    revert with 0, 32, 25, 0xfe436f6e74726f6c6c65723a2021756e617574686f72697a6564000000000000
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    revert with 0, 'Controller: underlying is 0'
                if sub_f75fabb8[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                    if cd[((32 * idx) + cd[36] + 36)]:
                        _133 = mem[64]
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = 18
                        mem[mem[64] + 128] = 'underlying.allowed'
                        mem[mem[64] + 32] = 1
                        mem[_133 + 64] = 1
                        emit 0x743971d2: mem[mem[64] len _133 + -mem[64] + 160]
                    else:
                        _136 = mem[64]
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = 18
                        mem[mem[64] + 128] = 'underlying.allowed'
                        mem[mem[64] + 32] = 1
                        mem[_136 + 64] = 0
                        emit 0x743971d2: mem[mem[64] len _136 + -mem[64] + 160]
                else:
                    if cd[((32 * idx) + cd[36] + 36)]:
                        _139 = mem[64]
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = 18
                        mem[mem[64] + 128] = 'underlying.allowed'
                        mem[mem[64] + 32] = 0
                        mem[_139 + 64] = 1
                        emit 0x743971d2: mem[mem[64] len _139 + -mem[64] + 160]
                    else:
                        _142 = mem[64]
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = 18
                        mem[mem[64] + 128] = 'underlying.allowed'
                        mem[mem[64] + 32] = 0
                        mem[_142 + 64] = 0
                        emit 0x743971d2: mem[mem[64] len _142 + -mem[64] + 160]
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 8
            sub_f75fabb8[address(cd[((32 * idx) + cd[4] + 36)])].field_0 = uint8(bool(cd[((32 * idx) + cd[36] + 36)]))
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_ef8984d6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x768e5b27 with:
            gas gas_remaining wei
           args address(arg2), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xa0912155 with:
            gas gas_remaining wei
           args address(arg2), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0]:
        if not ext_call.return_data[32]:
            return 0
        require ext_code.size(coreAddress)
        staticcall coreAddress.0x768e5b27 with:
                gas gas_remaining wei
               args address(arg2), address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if 0 == ext_call.return_data[0]:
            if ext_call.return_data[32] and 10^18 > -1 / ext_call.return_data[32]:
                revert with 0, 17
            revert with 0, 18
        if not oracleAddress:
            return 6, 0
        if not address(arg2):
            return 7, 0
        require ext_code.size(oracleAddress)
        staticcall oracleAddress.0x5708447d with:
                gas gas_remaining wei
               args address(arg2)
        if not ext_call.success:
            return 8, 0
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            return 9, 0
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[32] and 10^18 > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, 18
            return 0, 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0]
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not 10^ext_call.return_data[31 len 1]:
                revert with 0, 18
            if ext_call.return_data[32] and 10^18 > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[31 len 1]:
                revert with 0, 18
            return 0, 
                   10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
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
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not s * t:
            revert with 0, 18
        if ext_call.return_data[32] and 10^18 > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[0] * ext_call.return_data[0] / s * t:
            revert with 0, 18
        return 0, 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / s * t
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x768e5b27 with:
            gas gas_remaining wei
           args address(arg2), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if block.timestamp < ext_call.return_data[64]:
        revert with 0, 17
    if ext_call.return_data[32] and sub_663b6523[address(arg2)].field_256 > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256 and block.timestamp - ext_call.return_data[64] > -1 / ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256:
        revert with 0, 17
    if ext_call.return_data[32] > !((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
        revert with 0, 17
    if not ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
        return 0
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x768e5b27 with:
            gas gas_remaining wei
           args address(arg2), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if 0 == ext_call.return_data[0]:
        if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) and 10^18 > -1 / ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
            revert with 0, 17
        revert with 0, 18
    if not oracleAddress:
        return 6, 0
    if not address(arg2):
        return 7, 0
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0x5708447d with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        return 8, 0
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 9, 0
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) and 10^18 > -1 / ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
            revert with 0, 17
        if not ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, 18
        return 0, 
               (10^18 * ext_call.return_data[32]) + (10^18 * (block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) / ext_call.return_data[0] * ext_call.return_data[0]
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not 10^ext_call.return_data[31 len 1]:
            revert with 0, 18
        if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) and 10^18 > -1 / ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
            revert with 0, 17
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[31 len 1]:
            revert with 0, 18
        return 0, 
               (10^18 * ext_call.return_data[32]) + (10^18 * (block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) / ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
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
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) and 10^18 > -1 / ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
        revert with 0, 17
    if not ext_call.return_data[0] * ext_call.return_data[0] / s * t:
        revert with 0, 18
    return 0, 
           (10^18 * ext_call.return_data[32]) + (10^18 * (block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) / ext_call.return_data[0] * ext_call.return_data[0] / s * t
}

function sub_3ad20b6f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xa0912155 with:
            gas gas_remaining wei
           args address(arg2), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if block.timestamp < ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x768e5b27 with:
            gas gas_remaining wei
           args address(arg2), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xa0912155 with:
            gas gas_remaining wei
           args address(arg2), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0]:
        if ext_call.return_data[32] and sub_663b6523[address(arg2)].field_1280 > -1 / ext_call.return_data[32]:
            revert with 0, 17
        require ext_code.size(coreAddress)
        staticcall coreAddress.0x768e5b27 with:
                gas gas_remaining wei
               args address(arg2), address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if ext_call.return_data[32] > !(ext_call.return_data[32] * sub_663b6523[address(arg2)].field_1280 / 10^18):
            revert with 0, 17
        if sub_663b6523[address(arg2)].field_1536 <= block.timestamp - ext_call.return_data[0]:
            return ext_call.return_data[0], 0, 0
        if sub_663b6523[address(arg2)].field_1536 < block.timestamp - ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[32] and sub_663b6523[address(arg2)].field_1536 - block.timestamp + ext_call.return_data[0] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if not sub_663b6523[address(arg2)].field_1536:
            revert with 0, 18
        if (sub_663b6523[address(arg2)].field_1536 * ext_call.return_data[32]) - (block.timestamp * ext_call.return_data[32]) + (ext_call.return_data[0] * ext_call.return_data[32]) / sub_663b6523[address(arg2)].field_1536 <= ext_call.return_data[32] + (ext_call.return_data[32] * sub_663b6523[address(arg2)].field_1280 / 10^18):
            return ext_call.return_data[0], 
                   0,
                   (sub_663b6523[address(arg2)].field_1536 * ext_call.return_data[32]) - (block.timestamp * ext_call.return_data[32]) + (ext_call.return_data[0] * ext_call.return_data[32]) / sub_663b6523[address(arg2)].field_1536
        if ext_call.return_data[0] and ext_call.return_data[32] + (ext_call.return_data[32] * sub_663b6523[address(arg2)].field_1280 / 10^18) > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not (sub_663b6523[address(arg2)].field_1536 * ext_call.return_data[32]) - (block.timestamp * ext_call.return_data[32]) + (ext_call.return_data[0] * ext_call.return_data[32]) / sub_663b6523[address(arg2)].field_1536:
            revert with 0, 18
        if ext_call.return_data[0] < (ext_call.return_data[32] * ext_call.return_data[0]) + (ext_call.return_data[32] * sub_663b6523[address(arg2)].field_1280 / 10^18 * ext_call.return_data[0]) / (sub_663b6523[address(arg2)].field_1536 * ext_call.return_data[32]) - (block.timestamp * ext_call.return_data[32]) + (ext_call.return_data[0] * ext_call.return_data[32]) / sub_663b6523[address(arg2)].field_1536:
            revert with 0, 17
        return (ext_call.return_data[32] * ext_call.return_data[0]) + (ext_call.return_data[32] * sub_663b6523[address(arg2)].field_1280 / 10^18 * ext_call.return_data[0]) / (sub_663b6523[address(arg2)].field_1536 * ext_call.return_data[32]) - (block.timestamp * ext_call.return_data[32]) + (ext_call.return_data[0] * ext_call.return_data[32]) / sub_663b6523[address(arg2)].field_1536, 
               ext_call.return_data[0] - ((ext_call.return_data[32] * ext_call.return_data[0]) + (ext_call.return_data[32] * sub_663b6523[address(arg2)].field_1280 / 10^18 * ext_call.return_data[0]) / (sub_663b6523[address(arg2)].field_1536 * ext_call.return_data[32]) - (block.timestamp * ext_call.return_data[32]) + (ext_call.return_data[0] * ext_call.return_data[32]) / sub_663b6523[address(arg2)].field_1536),
               ext_call.return_data[32] + (ext_call.return_data[32] * sub_663b6523[address(arg2)].field_1280 / 10^18)
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x768e5b27 with:
            gas gas_remaining wei
           args address(arg2), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if block.timestamp < ext_call.return_data[64]:
        revert with 0, 17
    if ext_call.return_data[32] and sub_663b6523[address(arg2)].field_256 > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256 and block.timestamp - ext_call.return_data[64] > -1 / ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256:
        revert with 0, 17
    if ext_call.return_data[32] > !((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
        revert with 0, 17
    if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) and sub_663b6523[address(arg2)].field_1280 > -1 / ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
        revert with 0, 17
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x768e5b27 with:
            gas gas_remaining wei
           args address(arg2), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) > !((ext_call.return_data[32] * sub_663b6523[address(arg2)].field_1280) + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600 * sub_663b6523[address(arg2)].field_1280) / 10^18):
        revert with 0, 17
    if sub_663b6523[address(arg2)].field_1536 <= block.timestamp - ext_call.return_data[0]:
        return ext_call.return_data[0], 0, 0
    if sub_663b6523[address(arg2)].field_1536 < block.timestamp - ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[32] and sub_663b6523[address(arg2)].field_1536 - block.timestamp + ext_call.return_data[0] > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if not sub_663b6523[address(arg2)].field_1536:
        revert with 0, 18
    if (sub_663b6523[address(arg2)].field_1536 * ext_call.return_data[32]) - (block.timestamp * ext_call.return_data[32]) + (ext_call.return_data[0] * ext_call.return_data[32]) / sub_663b6523[address(arg2)].field_1536 <= ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) + ((ext_call.return_data[32] * sub_663b6523[address(arg2)].field_1280) + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600 * sub_663b6523[address(arg2)].field_1280) / 10^18):
        return ext_call.return_data[0], 
               0,
               (sub_663b6523[address(arg2)].field_1536 * ext_call.return_data[32]) - (block.timestamp * ext_call.return_data[32]) + (ext_call.return_data[0] * ext_call.return_data[32]) / sub_663b6523[address(arg2)].field_1536
    if ext_call.return_data[0] and ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) + ((ext_call.return_data[32] * sub_663b6523[address(arg2)].field_1280) + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600 * sub_663b6523[address(arg2)].field_1280) / 10^18) > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not (sub_663b6523[address(arg2)].field_1536 * ext_call.return_data[32]) - (block.timestamp * ext_call.return_data[32]) + (ext_call.return_data[0] * ext_call.return_data[32]) / sub_663b6523[address(arg2)].field_1536:
        revert with 0, 18
    if ext_call.return_data[0] < (ext_call.return_data[32] * ext_call.return_data[0]) + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600 * ext_call.return_data[0]) + ((ext_call.return_data[32] * sub_663b6523[address(arg2)].field_1280) + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600 * sub_663b6523[address(arg2)].field_1280) / 10^18 * ext_call.return_data[0]) / (sub_663b6523[address(arg2)].field_1536 * ext_call.return_data[32]) - (block.timestamp * ext_call.return_data[32]) + (ext_call.return_data[0] * ext_call.return_data[32]) / sub_663b6523[address(arg2)].field_1536:
        revert with 0, 17
    return (ext_call.return_data[32] * ext_call.return_data[0]) + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600 * ext_call.return_data[0]) + ((ext_call.return_data[32] * sub_663b6523[address(arg2)].field_1280) + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600 * sub_663b6523[address(arg2)].field_1280) / 10^18 * ext_call.return_data[0]) / (sub_663b6523[address(arg2)].field_1536 * ext_call.return_data[32]) - (block.timestamp * ext_call.return_data[32]) + (ext_call.return_data[0] * ext_call.return_data[32]) / sub_663b6523[address(arg2)].field_1536, 
           ext_call.return_data[0] - ((ext_call.return_data[32] * ext_call.return_data[0]) + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600 * ext_call.return_data[0]) + ((ext_call.return_data[32] * sub_663b6523[address(arg2)].field_1280) + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600 * sub_663b6523[address(arg2)].field_1280) / 10^18 * ext_call.return_data[0]) / (sub_663b6523[address(arg2)].field_1536 * ext_call.return_data[32]) - (block.timestamp * ext_call.return_data[32]) + (ext_call.return_data[0] * ext_call.return_data[32]) / sub_663b6523[address(arg2)].field_1536),
           ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) + ((ext_call.return_data[32] * sub_663b6523[address(arg2)].field_1280) + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600 * sub_663b6523[address(arg2)].field_1280) / 10^18)
}

function sub_1867b480(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x768e5b27 with:
            gas gas_remaining wei
           args address(arg2), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xa0912155 with:
            gas gas_remaining wei
           args address(arg2), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0]:
        if not ext_call.return_data[32]:
            return 0, -1
        require ext_code.size(coreAddress)
        staticcall coreAddress.0x768e5b27 with:
                gas gas_remaining wei
               args address(arg2), address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if 0 == ext_call.return_data[0]:
            if False and sub_663b6523[address(arg2)].field_1024 > 0:
                revert with 0, 17
            if ext_call.return_data[32] and 10^18 > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if 10^18 * ext_call.return_data[32] and 10^18 > -1 / 10^18 * ext_call.return_data[32]:
                revert with 0, 17
            revert with 0, 18
        if not oracleAddress:
            return 6, 0
        if not address(arg2):
            return 7, 0
        require ext_code.size(oracleAddress)
        staticcall oracleAddress.0x5708447d with:
                gas gas_remaining wei
               args address(arg2)
        if not ext_call.success:
            return 8, 0
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            return 9, 0
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] and sub_663b6523[address(arg2)].field_1024 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[32] and 10^18 > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if 10^18 * ext_call.return_data[32] and 10^18 > -1 / 10^18 * ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg2)].field_1024:
                revert with 0, 18
            return 0, 
                   1000000000000000000 * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg2)].field_1024
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not 10^ext_call.return_data[31 len 1]:
                revert with 0, 18
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[31 len 1] and sub_663b6523[address(arg2)].field_1024 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[31 len 1]:
                revert with 0, 17
            if ext_call.return_data[32] and 10^18 > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if 10^18 * ext_call.return_data[32] and 10^18 > -1 / 10^18 * ext_call.return_data[32]:
                revert with 0, 17
            if not ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[31 len 1] * sub_663b6523[address(arg2)].field_1024:
                revert with 0, 18
            return 0, 
                   1000000000000000000 * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg2)].field_1024
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
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
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not s * t:
            revert with 0, 18
        if ext_call.return_data[0] * ext_call.return_data[0] / s * t and sub_663b6523[address(arg2)].field_1024 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / s * t:
            revert with 0, 17
        if ext_call.return_data[32] and 10^18 > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if 10^18 * ext_call.return_data[32] and 10^18 > -1 / 10^18 * ext_call.return_data[32]:
            revert with 0, 17
        if not ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg2)].field_1024:
            revert with 0, 18
        return 0, 
               1000000000000000000 * 10^18 * ext_call.return_data[32] / ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg2)].field_1024
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x768e5b27 with:
            gas gas_remaining wei
           args address(arg2), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if block.timestamp < ext_call.return_data[64]:
        revert with 0, 17
    if ext_call.return_data[32] and sub_663b6523[address(arg2)].field_256 > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256 and block.timestamp - ext_call.return_data[64] > -1 / ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256:
        revert with 0, 17
    if ext_call.return_data[32] > !((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
        revert with 0, 17
    if not ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
        return 0, -1
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x768e5b27 with:
            gas gas_remaining wei
           args address(arg2), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if 0 == ext_call.return_data[0]:
        if False and sub_663b6523[address(arg2)].field_1024 > 0:
            revert with 0, 17
        if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) and 10^18 > -1 / ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
            revert with 0, 17
        if (10^18 * ext_call.return_data[32]) + (10^18 * (block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) and 10^18 > -1 / (10^18 * ext_call.return_data[32]) + (10^18 * (block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
            revert with 0, 17
        revert with 0, 18
    if not oracleAddress:
        return 6, 0
    if not address(arg2):
        return 7, 0
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0x5708447d with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        return 8, 0
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 9, 0
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[0] and sub_663b6523[address(arg2)].field_1024 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) and 10^18 > -1 / ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
            revert with 0, 17
        if (10^18 * ext_call.return_data[32]) + (10^18 * (block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) and 10^18 > -1 / (10^18 * ext_call.return_data[32]) + (10^18 * (block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
            revert with 0, 17
        if not ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg2)].field_1024:
            revert with 0, 18
        return 0, 
               (1000000000000000000 * 10^18 * ext_call.return_data[32]) + (1000000000000000000 * 10^18 * (block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) / ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg2)].field_1024
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not 10^ext_call.return_data[31 len 1]:
            revert with 0, 18
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[31 len 1] and sub_663b6523[address(arg2)].field_1024 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[31 len 1]:
            revert with 0, 17
        if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) and 10^18 > -1 / ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
            revert with 0, 17
        if (10^18 * ext_call.return_data[32]) + (10^18 * (block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) and 10^18 > -1 / (10^18 * ext_call.return_data[32]) + (10^18 * (block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
            revert with 0, 17
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[31 len 1] * sub_663b6523[address(arg2)].field_1024:
            revert with 0, 18
        return 0, 
               (1000000000000000000 * 10^18 * ext_call.return_data[32]) + (1000000000000000000 * 10^18 * (block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) / ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg2)].field_1024
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
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
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    if ext_call.return_data[0] * ext_call.return_data[0] / s * t and sub_663b6523[address(arg2)].field_1024 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / s * t:
        revert with 0, 17
    if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) and 10^18 > -1 / ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
        revert with 0, 17
    if (10^18 * ext_call.return_data[32]) + (10^18 * (block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) and 10^18 > -1 / (10^18 * ext_call.return_data[32]) + (10^18 * (block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
        revert with 0, 17
    if not ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg2)].field_1024:
        revert with 0, 18
    return 0, 
           (1000000000000000000 * 10^18 * ext_call.return_data[32]) + (1000000000000000000 * 10^18 * (block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) / ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg2)].field_1024
}

function sub_a8ab52b0(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xa0912155 with:
            gas gas_remaining wei
           args address(arg3), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0]:
        emit Failure(14);
        return 14
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x768e5b27 with:
            gas gas_remaining wei
           args address(arg3), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if 0 == ext_call.return_data[0]:
        require ext_code.size(coreAddress)
        staticcall coreAddress.0x768e5b27 with:
                gas gas_remaining wei
               args address(arg3), address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(coreAddress)
        staticcall coreAddress.0xa0912155 with:
                gas gas_remaining wei
               args address(arg3), address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0]:
            if False and sub_663b6523[address(arg3)].field_512 > 0:
                revert with 0, 17
            if not ext_call.return_data[32]:
                if ext_call.return_data[32] > 0:
                    if ext_call.return_data[32] < 0:
                        revert with 0, 17
                else:
                    if 0 < ext_call.return_data[32]:
                        revert with 0, 17
            else:
                if False and sub_663b6523[address(arg3)].field_1024 > 0:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    revert with 0, 18
                if 0 / ext_call.return_data[32] < 10^18:
                    if False and sub_663b6523[address(arg3)].field_1024 > 0:
                        revert with 0, 17
                    if ext_call.return_data[32] < 0:
                        revert with 0, 17
                else:
                    if ext_call.return_data[32] > 0:
                        if ext_call.return_data[32] < 0:
                            revert with 0, 17
                    else:
                        if 0 < ext_call.return_data[32]:
                            revert with 0, 17
                if 0 / ext_call.return_data[32] < 10^18:
                    return 0
        else:
            require ext_code.size(coreAddress)
            staticcall coreAddress.0x768e5b27 with:
                    gas gas_remaining wei
                   args address(arg3), address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if block.timestamp < ext_call.return_data[64]:
                revert with 0, 17
            if ext_call.return_data[32] and sub_663b6523[address(arg3)].field_256 > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256 and block.timestamp - ext_call.return_data[64] > -1 / ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256:
                revert with 0, 17
            if ext_call.return_data[32] > !((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600):
                revert with 0, 17
            if False and sub_663b6523[address(arg3)].field_512 > 0:
                revert with 0, 17
            if not ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600):
                if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600) > 0:
                    if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600) < 0:
                        revert with 0, 17
                else:
                    if 0 < ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600):
                        revert with 0, 17
            else:
                if False and sub_663b6523[address(arg3)].field_1024 > 0:
                    revert with 0, 17
                if not ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600):
                    revert with 0, 18
                if 0 / ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600) < 10^18:
                    if False and sub_663b6523[address(arg3)].field_1024 > 0:
                        revert with 0, 17
                    if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600) < 0:
                        revert with 0, 17
                else:
                    if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600) > 0:
                        if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600) < 0:
                            revert with 0, 17
                    else:
                        if 0 < ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600):
                            revert with 0, 17
                if 0 / ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600) < 10^18:
                    return 0
    else:
        if not oracleAddress:
            emit Failure(6);
            return 6
        if not address(arg3):
            emit Failure(7);
            return 7
        require ext_code.size(oracleAddress)
        staticcall oracleAddress.0x5708447d with:
                gas gas_remaining wei
               args address(arg3)
        if not ext_call.success:
            emit Failure(8);
            return 8
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            emit Failure(9);
            return 9
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(coreAddress)
            staticcall coreAddress.0x768e5b27 with:
                    gas gas_remaining wei
                   args address(arg3), address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(coreAddress)
            staticcall coreAddress.0xa0912155 with:
                    gas gas_remaining wei
                   args address(arg3), address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if ext_call.return_data[0]:
                if ext_call.return_data[0] * ext_call.return_data[0] and sub_663b6523[address(arg3)].field_512 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, 17
                if not ext_call.return_data[32]:
                    if ext_call.return_data[32] > ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg3)].field_512 / 10^18:
                        if ext_call.return_data[32] < ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg3)].field_512 / 10^18:
                            revert with 0, 17
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg3)].field_512 / 10^18 < ext_call.return_data[32]:
                            revert with 0, 17
                else:
                    if ext_call.return_data[0] * ext_call.return_data[0] and sub_663b6523[address(arg3)].field_1024 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        revert with 0, 18
                    if ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg3)].field_1024 / ext_call.return_data[32] < 10^18:
                        if ext_call.return_data[0] * ext_call.return_data[0] and sub_663b6523[address(arg3)].field_1024 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[32] < ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg3)].field_1024 / 10^18:
                            revert with 0, 17
                    else:
                        if ext_call.return_data[32] > ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg3)].field_512 / 10^18:
                            if ext_call.return_data[32] < ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg3)].field_512 / 10^18:
                                revert with 0, 17
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg3)].field_512 / 10^18 < ext_call.return_data[32]:
                                revert with 0, 17
                    if ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg3)].field_1024 / ext_call.return_data[32] < 10^18:
                        return 0
            else:
                require ext_code.size(coreAddress)
                staticcall coreAddress.0x768e5b27 with:
                        gas gas_remaining wei
                       args address(arg3), address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if block.timestamp < ext_call.return_data[64]:
                    revert with 0, 17
                if ext_call.return_data[32] and sub_663b6523[address(arg3)].field_256 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256 and block.timestamp - ext_call.return_data[64] > -1 / ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256:
                    revert with 0, 17
                if ext_call.return_data[32] > !((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600):
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[0] and sub_663b6523[address(arg3)].field_512 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, 17
                if not ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600):
                    if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600) > ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg3)].field_512 / 10^18:
                        if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600) < ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg3)].field_512 / 10^18:
                            revert with 0, 17
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg3)].field_512 / 10^18 < ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600):
                            revert with 0, 17
                else:
                    if ext_call.return_data[0] * ext_call.return_data[0] and sub_663b6523[address(arg3)].field_1024 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 0, 17
                    if not ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600):
                        revert with 0, 18
                    if ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg3)].field_1024 / ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600) < 10^18:
                        if ext_call.return_data[0] * ext_call.return_data[0] and sub_663b6523[address(arg3)].field_1024 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600) < ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg3)].field_1024 / 10^18:
                            revert with 0, 17
                    else:
                        if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600) > ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg3)].field_512 / 10^18:
                            if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600) < ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg3)].field_512 / 10^18:
                                revert with 0, 17
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg3)].field_512 / 10^18 < ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600):
                                revert with 0, 17
                    if ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg3)].field_1024 / ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600) < 10^18:
                        return 0
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not 10^ext_call.return_data[31 len 1]:
                    revert with 0, 18
                require ext_code.size(coreAddress)
                staticcall coreAddress.0x768e5b27 with:
                        gas gas_remaining wei
                       args address(arg3), address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(coreAddress)
                staticcall coreAddress.0xa0912155 with:
                        gas gas_remaining wei
                       args address(arg3), address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) and sub_663b6523[address(arg3)].field_512 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        if ext_call.return_data[32] > ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg3)].field_512 / 10^18:
                            if ext_call.return_data[32] < ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg3)].field_512 / 10^18:
                                revert with 0, 17
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg3)].field_512 / 10^18 < ext_call.return_data[32]:
                                revert with 0, 17
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) and sub_663b6523[address(arg3)].field_1024 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 17
                        if not ext_call.return_data[32]:
                            revert with 0, 18
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg3)].field_1024 / ext_call.return_data[32] < 10^18:
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) and sub_663b6523[address(arg3)].field_1024 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                                revert with 0, 17
                            if ext_call.return_data[32] < ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg3)].field_1024 / 10^18:
                                revert with 0, 17
                        else:
                            if ext_call.return_data[32] > ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg3)].field_512 / 10^18:
                                if ext_call.return_data[32] < ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg3)].field_512 / 10^18:
                                    revert with 0, 17
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg3)].field_512 / 10^18 < ext_call.return_data[32]:
                                    revert with 0, 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg3)].field_1024 / ext_call.return_data[32] < 10^18:
                            return 0
                else:
                    require ext_code.size(coreAddress)
                    staticcall coreAddress.0x768e5b27 with:
                            gas gas_remaining wei
                           args address(arg3), address(arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if block.timestamp < ext_call.return_data[64]:
                        revert with 0, 17
                    if ext_call.return_data[32] and sub_663b6523[address(arg3)].field_256 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256 and block.timestamp - ext_call.return_data[64] > -1 / ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256:
                        revert with 0, 17
                    if ext_call.return_data[32] > !((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600):
                        revert with 0, 17
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) and sub_663b6523[address(arg3)].field_512 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                        revert with 0, 17
                    if not ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600):
                        if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600) > ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg3)].field_512 / 10^18:
                            if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600) < ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg3)].field_512 / 10^18:
                                revert with 0, 17
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg3)].field_512 / 10^18 < ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600):
                                revert with 0, 17
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) and sub_663b6523[address(arg3)].field_1024 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 17
                        if not ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600):
                            revert with 0, 18
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg3)].field_1024 / ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600) < 10^18:
                            if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) and sub_663b6523[address(arg3)].field_1024 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                                revert with 0, 17
                            if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600) < ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg3)].field_1024 / 10^18:
                                revert with 0, 17
                        else:
                            if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600) > ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg3)].field_512 / 10^18:
                                if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600) < ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg3)].field_512 / 10^18:
                                    revert with 0, 17
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg3)].field_512 / 10^18 < ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600):
                                    revert with 0, 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg3)].field_1024 / ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600) < 10^18:
                            return 0
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
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
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                require ext_code.size(coreAddress)
                staticcall coreAddress.0x768e5b27 with:
                        gas gas_remaining wei
                       args address(arg3), address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(coreAddress)
                staticcall coreAddress.0xa0912155 with:
                        gas gas_remaining wei
                       args address(arg3), address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[0] / s * t and sub_663b6523[address(arg3)].field_512 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / s * t:
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        if ext_call.return_data[32] > ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg3)].field_512 / 10^18:
                            if ext_call.return_data[32] < ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg3)].field_512 / 10^18:
                                revert with 0, 17
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg3)].field_512 / 10^18 < ext_call.return_data[32]:
                                revert with 0, 17
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] / s * t and sub_663b6523[address(arg3)].field_1024 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / s * t:
                            revert with 0, 17
                        if not ext_call.return_data[32]:
                            revert with 0, 18
                        if ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg3)].field_1024 / ext_call.return_data[32] < 10^18:
                            if ext_call.return_data[0] * ext_call.return_data[0] / s * t and sub_663b6523[address(arg3)].field_1024 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / s * t:
                                revert with 0, 17
                            if ext_call.return_data[32] < ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg3)].field_1024 / 10^18:
                                revert with 0, 17
                        else:
                            if ext_call.return_data[32] > ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg3)].field_512 / 10^18:
                                if ext_call.return_data[32] < ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg3)].field_512 / 10^18:
                                    revert with 0, 17
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg3)].field_512 / 10^18 < ext_call.return_data[32]:
                                    revert with 0, 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg3)].field_1024 / ext_call.return_data[32] < 10^18:
                            return 0
                else:
                    require ext_code.size(coreAddress)
                    staticcall coreAddress.0x768e5b27 with:
                            gas gas_remaining wei
                           args address(arg3), address(arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if block.timestamp < ext_call.return_data[64]:
                        revert with 0, 17
                    if ext_call.return_data[32] and sub_663b6523[address(arg3)].field_256 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256 and block.timestamp - ext_call.return_data[64] > -1 / ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256:
                        revert with 0, 17
                    if ext_call.return_data[32] > !((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600):
                        revert with 0, 17
                    if ext_call.return_data[0] * ext_call.return_data[0] / s * t and sub_663b6523[address(arg3)].field_512 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / s * t:
                        revert with 0, 17
                    if not ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600):
                        if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600) > ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg3)].field_512 / 10^18:
                            if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600) < ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg3)].field_512 / 10^18:
                                revert with 0, 17
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg3)].field_512 / 10^18 < ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600):
                                revert with 0, 17
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] / s * t and sub_663b6523[address(arg3)].field_1024 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / s * t:
                            revert with 0, 17
                        if not ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600):
                            revert with 0, 18
                        if ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg3)].field_1024 / ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600) < 10^18:
                            if ext_call.return_data[0] * ext_call.return_data[0] / s * t and sub_663b6523[address(arg3)].field_1024 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / s * t:
                                revert with 0, 17
                            if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600) < ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg3)].field_1024 / 10^18:
                                revert with 0, 17
                        else:
                            if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600) > ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg3)].field_512 / 10^18:
                                if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600) < ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg3)].field_512 / 10^18:
                                    revert with 0, 17
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg3)].field_512 / 10^18 < ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600):
                                    revert with 0, 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg3)].field_1024 / ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg3)].field_256) / 8760 * 10^18 * 24 * 3600) < 10^18:
                            return 0
    emit Failure(13);
    return 13
}

function sub_4ee5c419(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x768e5b27 with:
            gas gas_remaining wei
           args address(arg2), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if 0 == ext_call.return_data[0]:
        require ext_code.size(coreAddress)
        staticcall coreAddress.0x768e5b27 with:
                gas gas_remaining wei
               args address(arg2), address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(coreAddress)
        staticcall coreAddress.0xa0912155 with:
                gas gas_remaining wei
               args address(arg2), address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0]:
            if False and sub_663b6523[address(arg2)].field_512 > 0:
                revert with 0, 17
            if not ext_call.return_data[32]:
                if ext_call.return_data[32] > 0:
                    if ext_call.return_data[32] < 0:
                        revert with 0, 17
                    return 0, 0, ext_call.return_data[32], ext_call.return_data[32], 0, -1
                if 0 < ext_call.return_data[32]:
                    revert with 0, 17
                return 0, 0, ext_call.return_data[32], -ext_call.return_data[32], 0, -1
            if False and sub_663b6523[address(arg2)].field_1024 > 0:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if 0 / ext_call.return_data[32] < 10^18:
                if False and sub_663b6523[address(arg2)].field_1024 > 0:
                    revert with 0, 17
                if ext_call.return_data[32] < 0:
                    revert with 0, 17
                return 0, 0, ext_call.return_data[32], 0, ext_call.return_data[32], 0 / ext_call.return_data[32]
            if ext_call.return_data[32] > 0:
                if ext_call.return_data[32] < 0:
                    revert with 0, 17
                return 0, 0, ext_call.return_data[32], ext_call.return_data[32], 0, 0 / ext_call.return_data[32]
            if 0 < ext_call.return_data[32]:
                revert with 0, 17
            return 0, 0, ext_call.return_data[32], -ext_call.return_data[32], 0, 0 / ext_call.return_data[32]
        require ext_code.size(coreAddress)
        staticcall coreAddress.0x768e5b27 with:
                gas gas_remaining wei
               args address(arg2), address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if block.timestamp < ext_call.return_data[64]:
            revert with 0, 17
        if ext_call.return_data[32] and sub_663b6523[address(arg2)].field_256 > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256 and block.timestamp - ext_call.return_data[64] > -1 / ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256:
            revert with 0, 17
        if ext_call.return_data[32] > !((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
            revert with 0, 17
        if False and sub_663b6523[address(arg2)].field_512 > 0:
            revert with 0, 17
        if not ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
            if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) > 0:
                if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) < 0:
                    revert with 0, 17
                return 0, 
                       0,
                       ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600),
                       ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600),
                       0,
                       -1
            if 0 < ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
                revert with 0, 17
            return 0, 
                   0,
                   ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600),
                   -ext_call.return_data[32] - ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600),
                   0,
                   -1
        if False and sub_663b6523[address(arg2)].field_1024 > 0:
            revert with 0, 17
        if not ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
            revert with 0, 18
        if 0 / ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) < 10^18:
            if False and sub_663b6523[address(arg2)].field_1024 > 0:
                revert with 0, 17
            if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) < 0:
                revert with 0, 17
            return 0, 
                   0,
                   ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600),
                   0,
                   ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600),
                   0 / ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600)
        if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) > 0:
            if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) < 0:
                revert with 0, 17
            return 0, 
                   0,
                   ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600),
                   ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600),
                   0,
                   0 / ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600)
        if 0 < ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
            revert with 0, 17
        return 0, 
               0,
               ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600),
               -ext_call.return_data[32] - ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600),
               0,
               0 / ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600)
    if not oracleAddress:
        return 6, 0, 0, 0, 0, 0
    if not address(arg2):
        return 7, 0, 0, 0, 0, 0
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0x5708447d with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        return 8, 0, 0, 0, 0, 0
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 9, 0, 0, 0, 0, 0
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(coreAddress)
        staticcall coreAddress.0x768e5b27 with:
                gas gas_remaining wei
               args address(arg2), address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(coreAddress)
        staticcall coreAddress.0xa0912155 with:
                gas gas_remaining wei
               args address(arg2), address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0]:
            if ext_call.return_data[0] * ext_call.return_data[0] and sub_663b6523[address(arg2)].field_512 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                if ext_call.return_data[32] > ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg2)].field_512 / 10^18:
                    if ext_call.return_data[32] < ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg2)].field_512 / 10^18:
                        revert with 0, 17
                    return 0, 
                           ext_call.return_data[0] * ext_call.return_data[0],
                           ext_call.return_data[32],
                           ext_call.return_data[32] - (ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg2)].field_512 / 10^18),
                           0,
                           -1
                if ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg2)].field_512 / 10^18 < ext_call.return_data[32]:
                    revert with 0, 17
                return 0, 
                       ext_call.return_data[0] * ext_call.return_data[0],
                       ext_call.return_data[32],
                       (ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg2)].field_512 / 10^18) - ext_call.return_data[32],
                       0,
                       -1
            if ext_call.return_data[0] * ext_call.return_data[0] and sub_663b6523[address(arg2)].field_1024 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg2)].field_1024 / ext_call.return_data[32] < 10^18:
                if ext_call.return_data[0] * ext_call.return_data[0] and sub_663b6523[address(arg2)].field_1024 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[32] < ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg2)].field_1024 / 10^18:
                    revert with 0, 17
                return 0, 
                       ext_call.return_data[0] * ext_call.return_data[0],
                       ext_call.return_data[32],
                       0,
                       ext_call.return_data[32] - (ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg2)].field_1024 / 10^18),
                       ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg2)].field_1024 / ext_call.return_data[32]
            if ext_call.return_data[32] > ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg2)].field_512 / 10^18:
                if ext_call.return_data[32] < ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg2)].field_512 / 10^18:
                    revert with 0, 17
                return 0, 
                       ext_call.return_data[0] * ext_call.return_data[0],
                       ext_call.return_data[32],
                       ext_call.return_data[32] - (ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg2)].field_512 / 10^18),
                       0,
                       ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg2)].field_1024 / ext_call.return_data[32]
            if ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg2)].field_512 / 10^18 < ext_call.return_data[32]:
                revert with 0, 17
            return 0, 
                   ext_call.return_data[0] * ext_call.return_data[0],
                   ext_call.return_data[32],
                   (ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg2)].field_512 / 10^18) - ext_call.return_data[32],
                   0,
                   ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg2)].field_1024 / ext_call.return_data[32]
        require ext_code.size(coreAddress)
        staticcall coreAddress.0x768e5b27 with:
                gas gas_remaining wei
               args address(arg2), address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if block.timestamp < ext_call.return_data[64]:
            revert with 0, 17
        if ext_call.return_data[32] and sub_663b6523[address(arg2)].field_256 > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256 and block.timestamp - ext_call.return_data[64] > -1 / ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256:
            revert with 0, 17
        if ext_call.return_data[32] > !((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[0] and sub_663b6523[address(arg2)].field_512 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
            if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) > ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg2)].field_512 / 10^18:
                if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) < ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg2)].field_512 / 10^18:
                    revert with 0, 17
                return 0, 
                       ext_call.return_data[0] * ext_call.return_data[0],
                       ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600),
                       ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) - (ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg2)].field_512 / 10^18),
                       0,
                       -1
            if ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg2)].field_512 / 10^18 < ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
                revert with 0, 17
            return 0, 
                   ext_call.return_data[0] * ext_call.return_data[0],
                   ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600),
                   (ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg2)].field_512 / 10^18) - ext_call.return_data[32] - ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600),
                   0,
                   -1
        if ext_call.return_data[0] * ext_call.return_data[0] and sub_663b6523[address(arg2)].field_1024 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
            revert with 0, 18
        if ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg2)].field_1024 / ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) < 10^18:
            if ext_call.return_data[0] * ext_call.return_data[0] and sub_663b6523[address(arg2)].field_1024 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) < ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg2)].field_1024 / 10^18:
                revert with 0, 17
            return 0, 
                   ext_call.return_data[0] * ext_call.return_data[0],
                   ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600),
                   0,
                   ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) - (ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg2)].field_1024 / 10^18),
                   ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg2)].field_1024 / ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600)
        if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) > ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg2)].field_512 / 10^18:
            if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) < ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg2)].field_512 / 10^18:
                revert with 0, 17
            return 0, 
                   ext_call.return_data[0] * ext_call.return_data[0],
                   ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600),
                   ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) - (ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg2)].field_512 / 10^18),
                   0,
                   ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg2)].field_1024 / ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600)
        if ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg2)].field_512 / 10^18 < ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
            revert with 0, 17
        return 0, 
               ext_call.return_data[0] * ext_call.return_data[0],
               ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600),
               (ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg2)].field_512 / 10^18) - ext_call.return_data[32] - ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600),
               0,
               ext_call.return_data[0] * ext_call.return_data[0] * sub_663b6523[address(arg2)].field_1024 / ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600)
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not 10^ext_call.return_data[31 len 1]:
            revert with 0, 18
        require ext_code.size(coreAddress)
        staticcall coreAddress.0x768e5b27 with:
                gas gas_remaining wei
               args address(arg2), address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(coreAddress)
        staticcall coreAddress.0xa0912155 with:
                gas gas_remaining wei
               args address(arg2), address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0]:
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) and sub_663b6523[address(arg2)].field_512 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[32]:
                if ext_call.return_data[32] > ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg2)].field_512 / 10^18:
                    if ext_call.return_data[32] < ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg2)].field_512 / 10^18:
                        revert with 0, 17
                    return 0, 
                           ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]),
                           ext_call.return_data[32],
                           ext_call.return_data[32] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg2)].field_512 / 10^18),
                           0,
                           -1
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg2)].field_512 / 10^18 < ext_call.return_data[32]:
                    revert with 0, 17
                return 0, 
                       ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]),
                       ext_call.return_data[32],
                       (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg2)].field_512 / 10^18) - ext_call.return_data[32],
                       0,
                       -1
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) and sub_663b6523[address(arg2)].field_1024 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                revert with 0, 17
            if not ext_call.return_data[32]:
                revert with 0, 18
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg2)].field_1024 / ext_call.return_data[32] < 10^18:
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) and sub_663b6523[address(arg2)].field_1024 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                    revert with 0, 17
                if ext_call.return_data[32] < ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg2)].field_1024 / 10^18:
                    revert with 0, 17
                return 0, 
                       ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]),
                       ext_call.return_data[32],
                       0,
                       ext_call.return_data[32] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg2)].field_1024 / 10^18),
                       ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg2)].field_1024 / ext_call.return_data[32]
            if ext_call.return_data[32] > ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg2)].field_512 / 10^18:
                if ext_call.return_data[32] < ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg2)].field_512 / 10^18:
                    revert with 0, 17
                return 0, 
                       ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]),
                       ext_call.return_data[32],
                       ext_call.return_data[32] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg2)].field_512 / 10^18),
                       0,
                       ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg2)].field_1024 / ext_call.return_data[32]
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg2)].field_512 / 10^18 < ext_call.return_data[32]:
                revert with 0, 17
            return 0, 
                   ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]),
                   ext_call.return_data[32],
                   (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg2)].field_512 / 10^18) - ext_call.return_data[32],
                   0,
                   ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg2)].field_1024 / ext_call.return_data[32]
        require ext_code.size(coreAddress)
        staticcall coreAddress.0x768e5b27 with:
                gas gas_remaining wei
               args address(arg2), address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if block.timestamp < ext_call.return_data[64]:
            revert with 0, 17
        if ext_call.return_data[32] and sub_663b6523[address(arg2)].field_256 > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256 and block.timestamp - ext_call.return_data[64] > -1 / ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256:
            revert with 0, 17
        if ext_call.return_data[32] > !((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) and sub_663b6523[address(arg2)].field_512 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
            if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) > ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg2)].field_512 / 10^18:
                if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) < ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg2)].field_512 / 10^18:
                    revert with 0, 17
                return 0, 
                       ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]),
                       ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600),
                       ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) - (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg2)].field_512 / 10^18),
                       0,
                       -1
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg2)].field_512 / 10^18 < ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
                revert with 0, 17
            return 0, 
                   ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]),
                   ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600),
                   (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg2)].field_512 / 10^18) - ext_call.return_data[32] - ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600),
                   0,
                   -1
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) and sub_663b6523[address(arg2)].field_1024 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
            revert with 0, 17
        if not ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
            revert with 0, 18
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg2)].field_1024 / ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) < 10^18:
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) and sub_663b6523[address(arg2)].field_1024 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                revert with 0, 17
            if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) < ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg2)].field_1024 / 10^18:
                revert with 0, 17
            return 0, 
                   ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]),
                   ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600),
                   0,
                   ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) - (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg2)].field_1024 / 10^18),
                   ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg2)].field_1024 / ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600)
        if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) > ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg2)].field_512 / 10^18:
            if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) < ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg2)].field_512 / 10^18:
                revert with 0, 17
            return 0, 
                   ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]),
                   ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600),
                   ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) - (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg2)].field_512 / 10^18),
                   0,
                   ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg2)].field_1024 / ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600)
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg2)].field_512 / 10^18 < ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
            revert with 0, 17
        return 0, 
               ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]),
               ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600),
               (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg2)].field_512 / 10^18) - ext_call.return_data[32] - ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600),
               0,
               ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * sub_663b6523[address(arg2)].field_1024 / ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600)
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
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
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x768e5b27 with:
            gas gas_remaining wei
           args address(arg2), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(coreAddress)
    staticcall coreAddress.0xa0912155 with:
            gas gas_remaining wei
           args address(arg2), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0]:
        if ext_call.return_data[0] * ext_call.return_data[0] / s * t and sub_663b6523[address(arg2)].field_512 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / s * t:
            revert with 0, 17
        if not ext_call.return_data[32]:
            if ext_call.return_data[32] > ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg2)].field_512 / 10^18:
                if ext_call.return_data[32] < ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg2)].field_512 / 10^18:
                    revert with 0, 17
                return 0, 
                       ext_call.return_data[0] * ext_call.return_data[0] / s * t,
                       ext_call.return_data[32],
                       ext_call.return_data[32] - (ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg2)].field_512 / 10^18),
                       0,
                       -1
            if ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg2)].field_512 / 10^18 < ext_call.return_data[32]:
                revert with 0, 17
            return 0, 
                   ext_call.return_data[0] * ext_call.return_data[0] / s * t,
                   ext_call.return_data[32],
                   (ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg2)].field_512 / 10^18) - ext_call.return_data[32],
                   0,
                   -1
        if ext_call.return_data[0] * ext_call.return_data[0] / s * t and sub_663b6523[address(arg2)].field_1024 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / s * t:
            revert with 0, 17
        if not ext_call.return_data[32]:
            revert with 0, 18
        if ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg2)].field_1024 / ext_call.return_data[32] < 10^18:
            if ext_call.return_data[0] * ext_call.return_data[0] / s * t and sub_663b6523[address(arg2)].field_1024 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / s * t:
                revert with 0, 17
            if ext_call.return_data[32] < ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg2)].field_1024 / 10^18:
                revert with 0, 17
            return 0, 
                   ext_call.return_data[0] * ext_call.return_data[0] / s * t,
                   ext_call.return_data[32],
                   0,
                   ext_call.return_data[32] - (ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg2)].field_1024 / 10^18),
                   ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg2)].field_1024 / ext_call.return_data[32]
        if ext_call.return_data[32] > ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg2)].field_512 / 10^18:
            if ext_call.return_data[32] < ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg2)].field_512 / 10^18:
                revert with 0, 17
            return 0, 
                   ext_call.return_data[0] * ext_call.return_data[0] / s * t,
                   ext_call.return_data[32],
                   ext_call.return_data[32] - (ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg2)].field_512 / 10^18),
                   0,
                   ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg2)].field_1024 / ext_call.return_data[32]
        if ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg2)].field_512 / 10^18 < ext_call.return_data[32]:
            revert with 0, 17
        return 0, 
               ext_call.return_data[0] * ext_call.return_data[0] / s * t,
               ext_call.return_data[32],
               (ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg2)].field_512 / 10^18) - ext_call.return_data[32],
               0,
               ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg2)].field_1024 / ext_call.return_data[32]
    require ext_code.size(coreAddress)
    staticcall coreAddress.0x768e5b27 with:
            gas gas_remaining wei
           args address(arg2), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if block.timestamp < ext_call.return_data[64]:
        revert with 0, 17
    if ext_call.return_data[32] and sub_663b6523[address(arg2)].field_256 > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256 and block.timestamp - ext_call.return_data[64] > -1 / ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256:
        revert with 0, 17
    if ext_call.return_data[32] > !((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
        revert with 0, 17
    if ext_call.return_data[0] * ext_call.return_data[0] / s * t and sub_663b6523[address(arg2)].field_512 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / s * t:
        revert with 0, 17
    if not ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
        if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) > ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg2)].field_512 / 10^18:
            if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) < ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg2)].field_512 / 10^18:
                revert with 0, 17
            return 0, 
                   ext_call.return_data[0] * ext_call.return_data[0] / s * t,
                   ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600),
                   ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) - (ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg2)].field_512 / 10^18),
                   0,
                   -1
        if ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg2)].field_512 / 10^18 < ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
            revert with 0, 17
        return 0, 
               ext_call.return_data[0] * ext_call.return_data[0] / s * t,
               ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600),
               (ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg2)].field_512 / 10^18) - ext_call.return_data[32] - ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600),
               0,
               -1
    if ext_call.return_data[0] * ext_call.return_data[0] / s * t and sub_663b6523[address(arg2)].field_1024 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / s * t:
        revert with 0, 17
    if not ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
        revert with 0, 18
    if ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg2)].field_1024 / ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) < 10^18:
        if ext_call.return_data[0] * ext_call.return_data[0] / s * t and sub_663b6523[address(arg2)].field_1024 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / s * t:
            revert with 0, 17
        if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) < ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg2)].field_1024 / 10^18:
            revert with 0, 17
        return 0, 
               ext_call.return_data[0] * ext_call.return_data[0] / s * t,
               ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600),
               0,
               ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) - (ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg2)].field_1024 / 10^18),
               ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg2)].field_1024 / ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600)
    if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) > ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg2)].field_512 / 10^18:
        if ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) < ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg2)].field_512 / 10^18:
            revert with 0, 17
        return 0, 
               ext_call.return_data[0] * ext_call.return_data[0] / s * t,
               ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600),
               ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600) - (ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg2)].field_512 / 10^18),
               0,
               ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg2)].field_1024 / ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600)
    if ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg2)].field_512 / 10^18 < ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600):
        revert with 0, 17
    return 0, 
           ext_call.return_data[0] * ext_call.return_data[0] / s * t,
           ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600),
           (ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg2)].field_512 / 10^18) - ext_call.return_data[32] - ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600),
           0,
           ext_call.return_data[0] * ext_call.return_data[0] / s * t * sub_663b6523[address(arg2)].field_1024 / ext_call.return_data[32] + ((block.timestamp * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) - (ext_call.return_data[64] * ext_call.return_data[32] * sub_663b6523[address(arg2)].field_256) / 8760 * 10^18 * 24 * 3600)
}



}
