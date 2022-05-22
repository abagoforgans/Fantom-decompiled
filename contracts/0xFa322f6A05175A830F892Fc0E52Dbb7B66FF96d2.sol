contract main {




// =====================  Runtime code  =====================


#
#  - initReserve(address arg1, uint8 arg2, address arg3)
#
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
    mem[96] = arg2.length
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



}
