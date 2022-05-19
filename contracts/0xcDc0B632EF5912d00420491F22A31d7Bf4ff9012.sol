contract main {




// =====================  Runtime code  =====================


const CONFIGURATOR_REVISION = 3


uint256 stor0;
uint8 stor1;
address addressesProvider;

function addressesProvider() payable {
    return addressesProvider
}

function _fallback() payable {
    revert
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor1:
        addressesProvider = arg1
    else:
        if ext_code.size(this.address):
            if 3 <= stor0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[21812 len 46], mem[210 len 18]
        if stor1:
            addressesProvider = arg1
        else:
            stor1 = 1
            stor0 = 3
            addressesProvider = arg1
            stor1 = 0
}

function sub_d8d4bcb3(?) payable {
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x853a238b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 34, code.data[21858 len 34], mem[198 len 30]
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x7e701e73 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x64681083 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function freezeReserve(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x853a238b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 34, code.data[21858 len 34], mem[198 len 30]
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x7e701e73 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x7aca76eb with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit ReserveFreezed(arg1);
}

function activateReserve(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x853a238b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 34, code.data[21858 len 34], mem[198 len 30]
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x7e701e73 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xb75d6f34 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit ReserveActivated(arg1);
}

function unfreezeReserve(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x853a238b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 34, code.data[21858 len 34], mem[198 len 30]
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x7e701e73 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xef1f9373 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit ReserveUnfreezed(arg1);
}

function removeLastAddedReserve(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x853a238b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 34, code.data[21858 len 34], mem[198 len 30]
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x7e701e73 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xd06e2ec1 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit ReserveRemoved(arg1);
}

function disableBorrowingOnReserve(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x853a238b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 34, code.data[21858 len 34], mem[198 len 30]
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x7e701e73 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa8dc0f45 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit BorrowingDisabledOnReserve(arg1);
}

function disableReserveAsCollateral(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x853a238b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 34, code.data[21858 len 34], mem[198 len 30]
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x7e701e73 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xe8ae2f5b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit ReserveDisabledAsCollateral(arg1);
}

function enableReserveStableBorrowRate(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x853a238b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 34, code.data[21858 len 34], mem[198 len 30]
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x7e701e73 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xdae4c4e7 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit StableRateEnabledOnReserve(arg1);
}

function disableReserveStableBorrowRate(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x853a238b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 34, code.data[21858 len 34], mem[198 len 30]
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x7e701e73 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xb8c0f745 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit StableRateDisabledOnReserve(arg1);
}

function setReserveDecimals(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x853a238b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 34, code.data[21858 len 34], mem[198 len 30]
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x7e701e73 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x66bbd928 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit ReserveDecimalsChanged(address(arg1), arg2);
}

function enableBorrowingOnReserve(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x853a238b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 34, code.data[21858 len 34], mem[198 len 30]
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x7e701e73 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xeede87c1 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit BorrowingEnabledOnReserve(address(arg1), arg2);
}

function setReserveBaseLTVasCollateral(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x853a238b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 34, code.data[21858 len 34], mem[198 len 30]
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x7e701e73 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xd466016f with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit ReserveBaseLtvChanged(address(arg1), arg2);
}

function setReserveLiquidationBonus(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x853a238b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 34, code.data[21858 len 34], mem[198 len 30]
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x7e701e73 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70fb84f4 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit ReserveLiquidationBonusChanged(address(arg1), arg2);
}

function setReserveLiquidationThreshold(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x853a238b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 34, code.data[21858 len 34], mem[198 len 30]
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x7e701e73 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x3443a14b with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit ReserveLiquidationThresholdChanged(address(arg1), arg2);
}

function setReserveInterestRateStrategyAddress(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x853a238b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 34, code.data[21858 len 34], mem[198 len 30]
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x7e701e73 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x1d2118f9 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit ReserveInterestRateStrategyChanged(address(arg1), arg2);
}

function enableReserveAsCollateral(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x853a238b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 34, code.data[21858 len 34], mem[198 len 30]
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x7e701e73 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa5bc826c with:
         gas gas_remaining wei
        args 0, 0, arg2, arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit ReserveEnabledAsCollateral(arg2, arg3, arg4, arg1);
}

function deactivateReserve(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x853a238b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 34, code.data[21858 len 34], mem[198 len 30]
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x7e701e73 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xc33cfd90 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 42, code.data[21892 len 42], mem[206 len 22]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x3e72a454 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit ReserveDeactivated(arg1);
}

function initReserveWithData(address arg1, string arg2, string arg3, uint8 arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 160
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + arg3.length + 160] = 0
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x853a238b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 32, 34, code.data[21858 len 34], mem[ceil32(arg2.length) + ceil32(arg3.length) + 262 len 30]
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x7e701e73 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len 9937] = code.data[11875 len 9937]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 10097] = addressesProvider
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 10129] = arg1
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 10161] = arg4
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 10193] = 160
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 10257] = arg2.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 10289 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 10225] = arg2.length + 192
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 10289] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 10321 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
        if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
            create contract with 0 wei
                            code: mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + arg2.length + 10161]
        else:
            mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 10321] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 10353 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
            create contract with 0 wei
                            code: mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + 10193]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 10289] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 10321 len arg2.length % 32]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 10225] = floor32(arg2.length) + 224
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 10321] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 10353 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
        if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
            create contract with 0 wei
                            code: mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + floor32(arg2.length) + 10193]
        else:
            mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 10353] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 10385 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
            create contract with 0 wei
                            code: mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + 10225]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x45330a40 with:
         gas gas_remaining wei
        args address(arg1), address(create.new_address), arg4 << 248, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit ReserveInitialized(address arg1, address arg2, address arg3):
                            0,
                            uint128(arg5) << 96,
                            arg1,
                            address(create.new_address),
}

function initReserve(address arg1, uint8 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x853a238b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 34, code.data[21858 len 34], mem[198 len 30]
    mem[96] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _10 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require return_data.size >= mem[mem[96] + 96] + mem[96] + 32 and mem[mem[96] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _13 = mem[_10 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_10 + 96])] = mem[_10 + 128 len ceil32(mem[_10 + 96])]
    if not _13 % 32:
        mem[_13 + ceil32(return_data.size) + 160] = 0x4d656e736120496e7465726573742062656172696e6720000000000000000000
        mem[_13 + ceil32(return_data.size) + 183 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
        mem[_13 + ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + 96]) + -(mem[ceil32(return_data.size) + 96] % 32) + 215 len mem[ceil32(return_data.size) + 96] % 32] = mem[ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + 96]) + -(mem[ceil32(return_data.size) + 96] % 32) + 160 len mem[ceil32(return_data.size) + 96] % 32]
        mem[mem[ceil32(return_data.size) + 96] + _13 + ceil32(return_data.size) + 183] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[ceil32(return_data.size) + 96] + _13 + ceil32(return_data.size) + 183 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[ceil32(return_data.size) + 96] + _13 + (2 * ceil32(return_data.size)) + 183
        require return_data.size >= 32
        _484 = mem[mem[ceil32(return_data.size) + 96] + _13 + ceil32(return_data.size) + 183]
        _485 = mem[ceil32(return_data.size) + 96] + _13 + (2 * ceil32(return_data.size)) + 183
        require mem[mem[ceil32(return_data.size) + 96] + _13 + ceil32(return_data.size) + 183] <= 4294967296
        require mem[mem[ceil32(return_data.size) + 96] + _13 + ceil32(return_data.size) + 183] + 32 <= return_data.size
        require return_data.size >= mem[mem[ceil32(return_data.size) + 96] + _13 + ceil32(return_data.size) + mem[mem[ceil32(return_data.size) + 96] + _13 + ceil32(return_data.size) + 183] + 183] + mem[mem[ceil32(return_data.size) + 96] + _13 + ceil32(return_data.size) + 183] + 32 and mem[mem[ceil32(return_data.size) + 96] + _13 + ceil32(return_data.size) + mem[mem[ceil32(return_data.size) + 96] + _13 + ceil32(return_data.size) + 183] + 183] <= 4294967296
        mem[mem[ceil32(return_data.size) + 96] + _13 + (2 * ceil32(return_data.size)) + 183] = mem[mem[ceil32(return_data.size) + 96] + _13 + ceil32(return_data.size) + mem[mem[ceil32(return_data.size) + 96] + _13 + ceil32(return_data.size) + 183] + 183]
        _490 = mem[mem[ceil32(return_data.size) + 96] + _13 + ceil32(return_data.size) + _484 + 183]
        mem[mem[ceil32(return_data.size) + 96] + _13 + (2 * ceil32(return_data.size)) + 215 len ceil32(mem[mem[ceil32(return_data.size) + 96] + _13 + ceil32(return_data.size) + _484 + 183])] = mem[mem[ceil32(return_data.size) + 96] + _13 + ceil32(return_data.size) + _484 + 215 len ceil32(mem[mem[ceil32(return_data.size) + 96] + _13 + ceil32(return_data.size) + _484 + 183])]
        if not _490 % 32:
            mem[64] = _490 + mem[ceil32(return_data.size) + 96] + _13 + (2 * ceil32(return_data.size)) + 215
            mem[_490 + mem[ceil32(return_data.size) + 96] + _13 + (2 * ceil32(return_data.size)) + 247] = 0x4d00000000000000000000000000000000000000000000000000000000000000
            _695 = mem[mem[ceil32(return_data.size) + 96] + _13 + (2 * ceil32(return_data.size)) + 183]
            mem[_490 + mem[ceil32(return_data.size) + 96] + _13 + (2 * ceil32(return_data.size)) + 248 len floor32(mem[mem[ceil32(return_data.size) + 96] + _13 + (2 * ceil32(return_data.size)) + 183])] = mem[mem[ceil32(return_data.size) + 96] + _13 + (2 * ceil32(return_data.size)) + 215 len floor32(mem[mem[ceil32(return_data.size) + 96] + _13 + (2 * ceil32(return_data.size)) + 183])]
            mem[_490 + mem[ceil32(return_data.size) + 96] + _13 + (2 * ceil32(return_data.size)) + floor32(mem[mem[ceil32(return_data.size) + 96] + _13 + (2 * ceil32(return_data.size)) + 183]) + -(mem[mem[ceil32(return_data.size) + 96] + _13 + (2 * ceil32(return_data.size)) + 183] % 32) + 280 len mem[mem[ceil32(return_data.size) + 96] + _13 + (2 * ceil32(return_data.size)) + 183] % 32] = mem[mem[ceil32(return_data.size) + 96] + _13 + (2 * ceil32(return_data.size)) + floor32(mem[mem[ceil32(return_data.size) + 96] + _13 + (2 * ceil32(return_data.size)) + 183]) + -(mem[mem[ceil32(return_data.size) + 96] + _13 + (2 * ceil32(return_data.size)) + 183] % 32) + 247 len mem[mem[ceil32(return_data.size) + 96] + _13 + (2 * ceil32(return_data.size)) + 183] % 32]
            mem[64] = mem[_485] + _490 + _485 + 65
            require ext_code.size(addressesProvider)
            staticcall addressesProvider.0x853a238b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 32, 34, code.data[21858 len 34], mem[_695 + _490 + _485 + 167 len 30]
            require ext_code.size(addressesProvider)
            staticcall addressesProvider.0x7e701e73 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_695 + _490 + _485 + 65 len 9937] = code.data[11875 len 9937]
            mem[_695 + _490 + _485 + 10002] = addressesProvider
            mem[_695 + _490 + _485 + 10034] = arg1
            mem[_695 + _490 + _485 + 10066] = arg2
            mem[_695 + _490 + _485 + 10098] = 160
            mem[_695 + _490 + _485 + 10162] = mem[_13 + ceil32(return_data.size) + 128]
            _953 = mem[_13 + ceil32(return_data.size) + 128]
            mem[_695 + _490 + _485 + 10194 len ceil32(mem[_13 + ceil32(return_data.size) + 128])] = mem[_13 + ceil32(return_data.size) + 160 len ceil32(mem[_13 + ceil32(return_data.size) + 128])]
            if not _953 % 32:
                mem[_695 + _490 + _485 + 10130] = _953 + 192
                mem[_953 + _695 + _490 + _485 + 10194] = mem[_490 + _485 + 32]
                mem[_953 + _695 + _490 + _485 + 10226 len ceil32(mem[_490 + _485 + 32])] = mem[_490 + _485 + 64 len ceil32(mem[_490 + _485 + 32])]
                if not mem[_490 + _485 + 32] % 32:
                    create contract with 0 wei
                                    code: code.data[11875 len 9937], addressesProvider, address(arg1), arg2 << 248, Array(len=_953 + 192, data=mem[_695 + _490 + _485 + 10162 len mem[_490 + _485 + 32] + _953 + 64])
                else:
                    mem[floor32(mem[_490 + _485 + 32]) + _953 + _695 + _490 + _485 + 10226] = mem[floor32(mem[_490 + _485 + 32]) + _953 + _695 + _490 + _485 + -(mem[_490 + _485 + 32] % 32) + 10258 len mem[_490 + _485 + 32] % 32]
                    create contract with 0 wei
                                    code: code.data[11875 len 9937], addressesProvider, address(arg1), arg2 << 248, Array(len=_953 + 192, data=mem[_695 + _490 + _485 + 10162 len _953 + 32], mem[_490 + _485 + 32], mem[_695 + _490 + _485 + _953 + 10226 len floor32(mem[_490 + _485 + 32]) + 32])
            else:
                mem[floor32(_953) + _695 + _490 + _485 + 10194] = mem[floor32(_953) + _695 + _490 + _485 + -(_953 % 32) + 10226 len _953 % 32]
                mem[_695 + _490 + _485 + 10130] = floor32(_953) + 224
                mem[floor32(_953) + _695 + _490 + _485 + 10226] = mem[_490 + _485 + 32]
                mem[floor32(_953) + _695 + _490 + _485 + 10258 len ceil32(mem[_490 + _485 + 32])] = mem[_490 + _485 + 64 len ceil32(mem[_490 + _485 + 32])]
                if not mem[_490 + _485 + 32] % 32:
                    create contract with 0 wei
                                    code: code.data[11875 len 9937], addressesProvider, address(arg1), arg2 << 248, Array(len=floor32(_953) + 224, data=mem[_695 + _490 + _485 + 10162 len mem[_490 + _485 + 32] + floor32(_953) + 96])
                else:
                    mem[floor32(mem[_490 + _485 + 32]) + floor32(_953) + _695 + _490 + _485 + 10258] = mem[floor32(mem[_490 + _485 + 32]) + floor32(_953) + _695 + _490 + _485 + -(mem[_490 + _485 + 32] % 32) + 10290 len mem[_490 + _485 + 32] % 32]
                    create contract with 0 wei
                                    code: code.data[11875 len 9937], addressesProvider, address(arg1), arg2 << 248, Array(len=floor32(_953) + 224, data=mem[_695 + _490 + _485 + 10162 len floor32(_953) + 64], mem[_490 + _485 + 32], mem[_695 + _490 + _485 + floor32(_953) + 10258 len floor32(mem[_490 + _485 + 32]) + 32])
        else:
            mem[floor32(_490) + mem[ceil32(return_data.size) + 96] + _13 + (2 * ceil32(return_data.size)) + 215] = mem[floor32(_490) + mem[ceil32(return_data.size) + 96] + _13 + (2 * ceil32(return_data.size)) + -(_490 % 32) + 247 len _490 % 32]
            mem[64] = floor32(_490) + mem[ceil32(return_data.size) + 96] + _13 + (2 * ceil32(return_data.size)) + 247
            mem[floor32(_490) + mem[ceil32(return_data.size) + 96] + _13 + (2 * ceil32(return_data.size)) + 279] = 0x4d00000000000000000000000000000000000000000000000000000000000000
            _701 = mem[mem[ceil32(return_data.size) + 96] + _13 + (2 * ceil32(return_data.size)) + 183]
            mem[floor32(_490) + mem[ceil32(return_data.size) + 96] + _13 + (2 * ceil32(return_data.size)) + 280 len floor32(mem[mem[ceil32(return_data.size) + 96] + _13 + (2 * ceil32(return_data.size)) + 183])] = mem[mem[ceil32(return_data.size) + 96] + _13 + (2 * ceil32(return_data.size)) + 215 len floor32(mem[mem[ceil32(return_data.size) + 96] + _13 + (2 * ceil32(return_data.size)) + 183])]
            mem[floor32(_490) + mem[ceil32(return_data.size) + 96] + _13 + (2 * ceil32(return_data.size)) + floor32(mem[mem[ceil32(return_data.size) + 96] + _13 + (2 * ceil32(return_data.size)) + 183]) + -(mem[mem[ceil32(return_data.size) + 96] + _13 + (2 * ceil32(return_data.size)) + 183] % 32) + 312 len mem[mem[ceil32(return_data.size) + 96] + _13 + (2 * ceil32(return_data.size)) + 183] % 32] = mem[mem[ceil32(return_data.size) + 96] + _13 + (2 * ceil32(return_data.size)) + floor32(mem[mem[ceil32(return_data.size) + 96] + _13 + (2 * ceil32(return_data.size)) + 183]) + -(mem[mem[ceil32(return_data.size) + 96] + _13 + (2 * ceil32(return_data.size)) + 183] % 32) + 247 len mem[mem[ceil32(return_data.size) + 96] + _13 + (2 * ceil32(return_data.size)) + 183] % 32]
            mem[64] = mem[_485] + floor32(_490) + _485 + 97
            require ext_code.size(addressesProvider)
            staticcall addressesProvider.0x853a238b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 32, 34, code.data[21858 len 34], mem[_701 + floor32(_490) + _485 + 199 len 30]
            require ext_code.size(addressesProvider)
            staticcall addressesProvider.0x7e701e73 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_701 + floor32(_490) + _485 + 97 len 9937] = code.data[11875 len 9937]
            mem[_701 + floor32(_490) + _485 + 10034] = addressesProvider
            mem[_701 + floor32(_490) + _485 + 10066] = arg1
            mem[_701 + floor32(_490) + _485 + 10098] = arg2
            mem[_701 + floor32(_490) + _485 + 10130] = 160
            mem[_701 + floor32(_490) + _485 + 10194] = mem[_13 + ceil32(return_data.size) + 128]
            _955 = mem[_13 + ceil32(return_data.size) + 128]
            mem[_701 + floor32(_490) + _485 + 10226 len ceil32(mem[_13 + ceil32(return_data.size) + 128])] = mem[_13 + ceil32(return_data.size) + 160 len ceil32(mem[_13 + ceil32(return_data.size) + 128])]
            if not _955 % 32:
                mem[_701 + floor32(_490) + _485 + 10162] = _955 + 192
                mem[_955 + _701 + floor32(_490) + _485 + 10226] = mem[floor32(_490) + _485 + 64]
                mem[_955 + _701 + floor32(_490) + _485 + 10258 len ceil32(mem[floor32(_490) + _485 + 64])] = mem[floor32(_490) + _485 + 96 len ceil32(mem[floor32(_490) + _485 + 64])]
                if not mem[floor32(_490) + _485 + 64] % 32:
                    create contract with 0 wei
                                    code: code.data[11875 len 9937], addressesProvider, address(arg1), arg2 << 248, Array(len=_955 + 192, data=mem[_701 + floor32(_490) + _485 + 10194 len mem[floor32(_490) + _485 + 64] + _955 + 64])
                else:
                    mem[floor32(mem[floor32(_490) + _485 + 64]) + _955 + _701 + floor32(_490) + _485 + 10258] = mem[floor32(mem[floor32(_490) + _485 + 64]) + _955 + _701 + floor32(_490) + _485 + -(mem[floor32(_490) + _485 + 64] % 32) + 10290 len mem[floor32(_490) + _485 + 64] % 32]
                    create contract with 0 wei
                                    code: code.data[11875 len 9937], addressesProvider, address(arg1), arg2 << 248, Array(len=_955 + 192, data=mem[_701 + floor32(_490) + _485 + 10194 len _955 + 32], mem[floor32(_490) + _485 + 64], mem[_701 + floor32(_490) + _485 + _955 + 10258 len floor32(mem[floor32(_490) + _485 + 64]) + 32])
            else:
                mem[floor32(_955) + _701 + floor32(_490) + _485 + 10226] = mem[floor32(_955) + _701 + floor32(_490) + _485 + -(_955 % 32) + 10258 len _955 % 32]
                mem[_701 + floor32(_490) + _485 + 10162] = floor32(_955) + 224
                mem[floor32(_955) + _701 + floor32(_490) + _485 + 10258] = mem[floor32(_490) + _485 + 64]
                mem[floor32(_955) + _701 + floor32(_490) + _485 + 10290 len ceil32(mem[floor32(_490) + _485 + 64])] = mem[floor32(_490) + _485 + 96 len ceil32(mem[floor32(_490) + _485 + 64])]
                if not mem[floor32(_490) + _485 + 64] % 32:
                    create contract with 0 wei
                                    code: code.data[11875 len 9937], addressesProvider, address(arg1), arg2 << 248, Array(len=floor32(_955) + 224, data=mem[_701 + floor32(_490) + _485 + 10194 len mem[floor32(_490) + _485 + 64] + floor32(_955) + 96])
                else:
                    mem[floor32(mem[floor32(_490) + _485 + 64]) + floor32(_955) + _701 + floor32(_490) + _485 + 10290] = mem[floor32(mem[floor32(_490) + _485 + 64]) + floor32(_955) + _701 + floor32(_490) + _485 + -(mem[floor32(_490) + _485 + 64] % 32) + 10322 len mem[floor32(_490) + _485 + 64] % 32]
                    create contract with 0 wei
                                    code: code.data[11875 len 9937], addressesProvider, address(arg1), arg2 << 248, Array(len=floor32(_955) + 224, data=mem[_701 + floor32(_490) + _485 + 10194 len floor32(_955) + 64], mem[floor32(_490) + _485 + 64], mem[_701 + floor32(_490) + _485 + floor32(_955) + 10290 len floor32(mem[floor32(_490) + _485 + 64]) + 32])
    else:
        mem[floor32(_13) + ceil32(return_data.size) + 128] = mem[floor32(_13) + ceil32(return_data.size) + -(_13 % 32) + 160 len _13 % 32]
        mem[floor32(_13) + ceil32(return_data.size) + 192] = 0x4d656e736120496e7465726573742062656172696e6720000000000000000000
        mem[floor32(_13) + ceil32(return_data.size) + 215 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
        mem[floor32(_13) + ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + 96]) + -(mem[ceil32(return_data.size) + 96] % 32) + 247 len mem[ceil32(return_data.size) + 96] % 32] = mem[ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + 96]) + -(mem[ceil32(return_data.size) + 96] % 32) + 160 len mem[ceil32(return_data.size) + 96] % 32]
        mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + ceil32(return_data.size) + 215] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + ceil32(return_data.size) + 215 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[ceil32(return_data.size) + 96] + floor32(_13) + (2 * ceil32(return_data.size)) + 215
        require return_data.size >= 32
        _486 = mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + ceil32(return_data.size) + 215]
        _487 = mem[ceil32(return_data.size) + 96] + floor32(_13) + (2 * ceil32(return_data.size)) + 215
        require mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + ceil32(return_data.size) + 215] <= 4294967296
        require mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + ceil32(return_data.size) + 215] + 32 <= return_data.size
        require return_data.size >= mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + ceil32(return_data.size) + mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + ceil32(return_data.size) + 215] + 215] + mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + ceil32(return_data.size) + 215] + 32 and mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + ceil32(return_data.size) + mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + ceil32(return_data.size) + 215] + 215] <= 4294967296
        mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + (2 * ceil32(return_data.size)) + 215] = mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + ceil32(return_data.size) + mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + ceil32(return_data.size) + 215] + 215]
        _491 = mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + ceil32(return_data.size) + _486 + 215]
        mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + (2 * ceil32(return_data.size)) + 247 len ceil32(mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + ceil32(return_data.size) + _486 + 215])] = mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + ceil32(return_data.size) + _486 + 247 len ceil32(mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + ceil32(return_data.size) + _486 + 215])]
        if not _491 % 32:
            mem[64] = _491 + mem[ceil32(return_data.size) + 96] + floor32(_13) + (2 * ceil32(return_data.size)) + 247
            mem[_491 + mem[ceil32(return_data.size) + 96] + floor32(_13) + (2 * ceil32(return_data.size)) + 279] = 0x4d00000000000000000000000000000000000000000000000000000000000000
            _698 = mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + (2 * ceil32(return_data.size)) + 215]
            mem[_491 + mem[ceil32(return_data.size) + 96] + floor32(_13) + (2 * ceil32(return_data.size)) + 280 len floor32(mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + (2 * ceil32(return_data.size)) + 215])] = mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + (2 * ceil32(return_data.size)) + 247 len floor32(mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + (2 * ceil32(return_data.size)) + 215])]
            mem[_491 + mem[ceil32(return_data.size) + 96] + floor32(_13) + (2 * ceil32(return_data.size)) + floor32(mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + (2 * ceil32(return_data.size)) + 215]) + -(mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + (2 * ceil32(return_data.size)) + 215] % 32) + 312 len mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + (2 * ceil32(return_data.size)) + 215] % 32] = mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + (2 * ceil32(return_data.size)) + floor32(mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + (2 * ceil32(return_data.size)) + 215]) + -(mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + (2 * ceil32(return_data.size)) + 215] % 32) + 279 len mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + (2 * ceil32(return_data.size)) + 215] % 32]
            mem[64] = mem[_487] + _491 + _487 + 65
            require ext_code.size(addressesProvider)
            staticcall addressesProvider.0x853a238b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 32, 34, code.data[21858 len 34], mem[_698 + _491 + _487 + 167 len 30]
            require ext_code.size(addressesProvider)
            staticcall addressesProvider.0x7e701e73 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_698 + _491 + _487 + 65 len 9937] = code.data[11875 len 9937]
            mem[_698 + _491 + _487 + 10002] = addressesProvider
            mem[_698 + _491 + _487 + 10034] = arg1
            mem[_698 + _491 + _487 + 10066] = arg2
            mem[_698 + _491 + _487 + 10098] = 160
            mem[_698 + _491 + _487 + 10162] = mem[floor32(_13) + ceil32(return_data.size) + 160]
            _957 = mem[floor32(_13) + ceil32(return_data.size) + 160]
            mem[_698 + _491 + _487 + 10194 len ceil32(mem[floor32(_13) + ceil32(return_data.size) + 160])] = mem[floor32(_13) + ceil32(return_data.size) + 192 len ceil32(mem[floor32(_13) + ceil32(return_data.size) + 160])]
            if not _957 % 32:
                mem[_698 + _491 + _487 + 10130] = _957 + 192
                mem[_957 + _698 + _491 + _487 + 10194] = mem[_491 + _487 + 32]
                mem[_957 + _698 + _491 + _487 + 10226 len ceil32(mem[_491 + _487 + 32])] = mem[_491 + _487 + 64 len ceil32(mem[_491 + _487 + 32])]
                if not mem[_491 + _487 + 32] % 32:
                    create contract with 0 wei
                                    code: code.data[11875 len 9937], addressesProvider, address(arg1), arg2 << 248, Array(len=_957 + 192, data=mem[_698 + _491 + _487 + 10162 len mem[_491 + _487 + 32] + _957 + 64])
                else:
                    mem[floor32(mem[_491 + _487 + 32]) + _957 + _698 + _491 + _487 + 10226] = mem[floor32(mem[_491 + _487 + 32]) + _957 + _698 + _491 + _487 + -(mem[_491 + _487 + 32] % 32) + 10258 len mem[_491 + _487 + 32] % 32]
                    create contract with 0 wei
                                    code: code.data[11875 len 9937], addressesProvider, address(arg1), arg2 << 248, Array(len=_957 + 192, data=mem[_698 + _491 + _487 + 10162 len _957 + 32], mem[_491 + _487 + 32], mem[_698 + _491 + _487 + _957 + 10226 len floor32(mem[_491 + _487 + 32]) + 32])
            else:
                mem[floor32(_957) + _698 + _491 + _487 + 10194] = mem[floor32(_957) + _698 + _491 + _487 + -(_957 % 32) + 10226 len _957 % 32]
                mem[_698 + _491 + _487 + 10130] = floor32(_957) + 224
                mem[floor32(_957) + _698 + _491 + _487 + 10226] = mem[_491 + _487 + 32]
                mem[floor32(_957) + _698 + _491 + _487 + 10258 len ceil32(mem[_491 + _487 + 32])] = mem[_491 + _487 + 64 len ceil32(mem[_491 + _487 + 32])]
                if not mem[_491 + _487 + 32] % 32:
                    create contract with 0 wei
                                    code: code.data[11875 len 9937], addressesProvider, address(arg1), arg2 << 248, Array(len=floor32(_957) + 224, data=mem[_698 + _491 + _487 + 10162 len mem[_491 + _487 + 32] + floor32(_957) + 96])
                else:
                    mem[floor32(mem[_491 + _487 + 32]) + floor32(_957) + _698 + _491 + _487 + 10258] = mem[floor32(mem[_491 + _487 + 32]) + floor32(_957) + _698 + _491 + _487 + -(mem[_491 + _487 + 32] % 32) + 10290 len mem[_491 + _487 + 32] % 32]
                    create contract with 0 wei
                                    code: code.data[11875 len 9937], addressesProvider, address(arg1), arg2 << 248, Array(len=floor32(_957) + 224, data=mem[_698 + _491 + _487 + 10162 len floor32(_957) + 64], mem[_491 + _487 + 32], mem[_698 + _491 + _487 + floor32(_957) + 10258 len floor32(mem[_491 + _487 + 32]) + 32])
        else:
            mem[floor32(_491) + mem[ceil32(return_data.size) + 96] + floor32(_13) + (2 * ceil32(return_data.size)) + 247] = mem[floor32(_491) + mem[ceil32(return_data.size) + 96] + floor32(_13) + (2 * ceil32(return_data.size)) + -(_491 % 32) + 279 len _491 % 32]
            mem[64] = floor32(_491) + mem[ceil32(return_data.size) + 96] + floor32(_13) + (2 * ceil32(return_data.size)) + 279
            mem[floor32(_491) + mem[ceil32(return_data.size) + 96] + floor32(_13) + (2 * ceil32(return_data.size)) + 311] = 0x4d00000000000000000000000000000000000000000000000000000000000000
            _703 = mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + (2 * ceil32(return_data.size)) + 215]
            mem[floor32(_491) + mem[ceil32(return_data.size) + 96] + floor32(_13) + (2 * ceil32(return_data.size)) + 312 len floor32(mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + (2 * ceil32(return_data.size)) + 215])] = mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + (2 * ceil32(return_data.size)) + 247 len floor32(mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + (2 * ceil32(return_data.size)) + 215])]
            mem[floor32(_491) + mem[ceil32(return_data.size) + 96] + floor32(_13) + (2 * ceil32(return_data.size)) + floor32(mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + (2 * ceil32(return_data.size)) + 215]) + -(mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + (2 * ceil32(return_data.size)) + 215] % 32) + 344 len mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + (2 * ceil32(return_data.size)) + 215] % 32] = mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + (2 * ceil32(return_data.size)) + floor32(mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + (2 * ceil32(return_data.size)) + 215]) + -(mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + (2 * ceil32(return_data.size)) + 215] % 32) + 279 len mem[mem[ceil32(return_data.size) + 96] + floor32(_13) + (2 * ceil32(return_data.size)) + 215] % 32]
            mem[64] = mem[_487] + floor32(_491) + _487 + 97
            require ext_code.size(addressesProvider)
            staticcall addressesProvider.0x853a238b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 32, 34, code.data[21858 len 34], mem[_703 + floor32(_491) + _487 + 199 len 30]
            require ext_code.size(addressesProvider)
            staticcall addressesProvider.0x7e701e73 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_703 + floor32(_491) + _487 + 97 len 9937] = code.data[11875 len 9937]
            mem[_703 + floor32(_491) + _487 + 10034] = addressesProvider
            mem[_703 + floor32(_491) + _487 + 10066] = arg1
            mem[_703 + floor32(_491) + _487 + 10098] = arg2
            mem[_703 + floor32(_491) + _487 + 10130] = 160
            mem[_703 + floor32(_491) + _487 + 10194] = mem[floor32(_13) + ceil32(return_data.size) + 160]
            _959 = mem[floor32(_13) + ceil32(return_data.size) + 160]
            mem[_703 + floor32(_491) + _487 + 10226 len ceil32(mem[floor32(_13) + ceil32(return_data.size) + 160])] = mem[floor32(_13) + ceil32(return_data.size) + 192 len ceil32(mem[floor32(_13) + ceil32(return_data.size) + 160])]
            if not _959 % 32:
                mem[_703 + floor32(_491) + _487 + 10162] = _959 + 192
                mem[_959 + _703 + floor32(_491) + _487 + 10226] = mem[floor32(_491) + _487 + 64]
                mem[_959 + _703 + floor32(_491) + _487 + 10258 len ceil32(mem[floor32(_491) + _487 + 64])] = mem[floor32(_491) + _487 + 96 len ceil32(mem[floor32(_491) + _487 + 64])]
                if not mem[floor32(_491) + _487 + 64] % 32:
                    create contract with 0 wei
                                    code: code.data[11875 len 9937], addressesProvider, address(arg1), arg2 << 248, Array(len=_959 + 192, data=mem[_703 + floor32(_491) + _487 + 10194 len mem[floor32(_491) + _487 + 64] + _959 + 64])
                else:
                    mem[floor32(mem[floor32(_491) + _487 + 64]) + _959 + _703 + floor32(_491) + _487 + 10258] = mem[floor32(mem[floor32(_491) + _487 + 64]) + _959 + _703 + floor32(_491) + _487 + -(mem[floor32(_491) + _487 + 64] % 32) + 10290 len mem[floor32(_491) + _487 + 64] % 32]
                    create contract with 0 wei
                                    code: code.data[11875 len 9937], addressesProvider, address(arg1), arg2 << 248, Array(len=_959 + 192, data=mem[_703 + floor32(_491) + _487 + 10194 len _959 + 32], mem[floor32(_491) + _487 + 64], mem[_703 + floor32(_491) + _487 + _959 + 10258 len floor32(mem[floor32(_491) + _487 + 64]) + 32])
            else:
                mem[floor32(_959) + _703 + floor32(_491) + _487 + 10226] = mem[floor32(_959) + _703 + floor32(_491) + _487 + -(_959 % 32) + 10258 len _959 % 32]
                mem[_703 + floor32(_491) + _487 + 10162] = floor32(_959) + 224
                mem[floor32(_959) + _703 + floor32(_491) + _487 + 10258] = mem[floor32(_491) + _487 + 64]
                mem[floor32(_959) + _703 + floor32(_491) + _487 + 10290 len ceil32(mem[floor32(_491) + _487 + 64])] = mem[floor32(_491) + _487 + 96 len ceil32(mem[floor32(_491) + _487 + 64])]
                if not mem[floor32(_491) + _487 + 64] % 32:
                    create contract with 0 wei
                                    code: code.data[11875 len 9937], addressesProvider, address(arg1), arg2 << 248, Array(len=floor32(_959) + 224, data=mem[_703 + floor32(_491) + _487 + 10194 len mem[floor32(_491) + _487 + 64] + floor32(_959) + 96])
                else:
                    mem[floor32(mem[floor32(_491) + _487 + 64]) + floor32(_959) + _703 + floor32(_491) + _487 + 10290] = mem[floor32(mem[floor32(_491) + _487 + 64]) + floor32(_959) + _703 + floor32(_491) + _487 + -(mem[floor32(_491) + _487 + 64] % 32) + 10322 len mem[floor32(_491) + _487 + 64] % 32]
                    create contract with 0 wei
                                    code: code.data[11875 len 9937], addressesProvider, address(arg1), arg2 << 248, Array(len=floor32(_959) + 224, data=mem[_703 + floor32(_491) + _487 + 10194 len floor32(_959) + 64], mem[floor32(_491) + _487 + 64], mem[_703 + floor32(_491) + _487 + floor32(_959) + 10290 len floor32(mem[floor32(_491) + _487 + 64]) + 32])
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x45330a40 with:
         gas gas_remaining wei
        args address(arg1), address(create.new_address), arg2 << 248, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit ReserveInitialized(arg3, arg1, address(create.new_address));
}



}
