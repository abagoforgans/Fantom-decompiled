contract main {




// =====================  Runtime code  =====================


const sub_7351a97f(?) = 2

const UINT_MAX_VALUE = -1


uint256 stor0;
uint8 stor1;
address addressesProvider;
address coreAddress;
uint256 stor53;
address dataProviderAddress;
uint256 stor54;
address parametersProviderAddress;
uint256 stor55;
address stor56;
uint256 stor56;
address liquidationManagerAddress;
uint256 stor57;
uint8 stor58; offset 160
address stor58;
uint256 stor58;

function liquidationManager() {
    return address(liquidationManagerAddress)
}

function parametersProvider() {
    return address(parametersProviderAddress)
}

function dataProvider() {
    return address(dataProviderAddress)
}

function addressesProvider() {
    return addressesProvider
}

function core() {
    return address(coreAddress)
}

function _fallback() payable {
    revert
}

function getUserAccountData(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(address(dataProviderAddress))
    staticcall address(dataProviderAddress).0xbf92857c with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    return ext_call.return_data[0], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192],
           ext_call.return_data[224]
}

function getReserveConfigurationData(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(address(dataProviderAddress))
    staticcall address(dataProviderAddress).0x3e150141 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    return ext_call.return_data[0], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           address(ext_call.return_data[96]),
           bool(ext_call.return_data[128]),
           bool(ext_call.return_data[160]),
           bool(ext_call.return_data[192]),
           bool(ext_call.return_data[224])
}

function getUserReserveData(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(address(dataProviderAddress))
    staticcall address(dataProviderAddress).0x28dd2d01 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    return ext_call.return_data[0], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192],
           ext_call.return_data[224],
           ext_call.return_data[256],
           bool(ext_call.return_data[288])
}

function getReserveData(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(address(dataProviderAddress))
    staticcall address(dataProviderAddress).0x35ea6a75 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 416
    return ext_call.return_data[0], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192],
           ext_call.return_data[224],
           ext_call.return_data[256],
           ext_call.return_data[288],
           ext_call.return_data[320],
           address(ext_call.return_data[352]),
           ext_call.return_data[384] % 1099511627776
}

function getReserves() {
    mem[96] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + (32 * mem[mem[96] + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    mem[(32 * _7) + ceil32(return_data.size) + 128] = 32
    mem[(32 * _7) + ceil32(return_data.size) + 160] = mem[ceil32(return_data.size) + 96]
    mem[(32 * _7) + ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
    return 32, mem[(32 * _7) + ceil32(return_data.size) + 160 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    if not stor1:
        if ext_code.size(this.address):
            if 2 <= stor0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x2e436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if not stor1:
            stor1 = 1
            stor0 = 2
    uint8(stor58.field_160) = 1
    addressesProvider = arg1
    require ext_code.size(arg1)
    staticcall arg1.0x7e701e73 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor53) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor53))
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x7078304e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor54) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor54))
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x27fae013 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor55) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor55))
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.getFeeProvider() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor56) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor56))
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0xfbbc6f03 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor58.field_0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor58.field_0))
    if not stor1:
        stor1 = 0
}

function setUserUseReserveAsCollateral(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not uint8(stor58.field_160):
        revert with 0, 'eReentrancyGuard: reentrant call'
    uint8(stor58.field_160) = 0
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).getReserveIsActive(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x74416374696f6e20726571756972657320616e2061637469766520726573657276,
                    mem[197 len 31]
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).getReserveIsFreezed(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e416374696f6e20726571756972657320616e20756e667265657a656420726573657276,
                    mem[200 len 28]
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).getUserUnderlyingAssetBalance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x655573657220646f6573206e6f74206861766520616e79206c6971756964697479206465706f73697465,
                    mem[206 len 22]
    require ext_code.size(address(dataProviderAddress))
    staticcall address(dataProviderAddress).balanceDecreaseAllowed(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args address(arg1), msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x6555736572206465706f73697420697320616c7265616479206265696e67207573656420617320636f6c6c6174657261,
                    mem[212 len 16]
    require ext_code.size(address(coreAddress))
    call address(coreAddress).setUserUseReserveAsCollateral(address arg1, address arg2, bool arg3) with:
         gas gas_remaining wei
        args address(arg1), msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not arg2:
        emit ReserveUsedAsCollateralDisabled(arg1, msg.sender);
    else:
        emit ReserveUsedAsCollateralEnabled(arg1, msg.sender);
    uint8(stor58.field_160) = 1
}

function redeemUnderlying(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if not uint8(stor58.field_160):
        revert with 0, 'eReentrancyGuard: reentrant call'
    uint8(stor58.field_160) = 0
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).0x3af361d5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    75,
                    0x655468652063616c6c6572206f6620746869732066756e6374696f6e2063616e206f6e6c7920626520746865204d546f6b656e20636f6e7472616374206f66207468697320726573657276,
                    mem[239 len 21]
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).getReserveIsActive(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x74416374696f6e20726571756972657320616e2061637469766520726573657276,
                    mem[197 len 31]
    if arg3 <= 0:
        revert with 0, 'Amount must be greater than 0'
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).getReserveAvailableLiquidity(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x675468657265206973206e6f7420656e6f756768206c697175696469747920617661696c61626c6520746f207265646565,
                    mem[213 len 15]
    require ext_code.size(address(coreAddress))
    call address(coreAddress).updateStateOnRedeem(address arg1, address arg2, uint256 arg3, bool arg4) with:
         gas gas_remaining wei
        args 0, 0, address(arg2), arg3, not arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(coreAddress))
    call address(coreAddress).transferToUser(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(dataProviderAddress))
    staticcall address(dataProviderAddress).0xf529c9 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(address(stor58.field_0))
    call address(stor58.field_0).0x6cc49eee with:
         gas gas_remaining wei
        args 0, ext_call.return_data[32], 0, 1, arg3, ext_call.return_data[32], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit RedeemUnderlying(arg3, block.timestamp, arg1, arg2);
    uint8(stor58.field_160) = 1
}

function deposit(address arg1, uint256 arg2, uint16 arg3) payable {
    require calldata.size - 4 >= 96
    if not uint8(stor58.field_160):
        revert with 0, 'eReentrancyGuard: reentrant call'
    uint8(stor58.field_160) = 0
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).getReserveIsActive(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x74416374696f6e20726571756972657320616e2061637469766520726573657276,
                    mem[197 len 31]
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).getReserveIsFreezed(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e416374696f6e20726571756972657320616e20756e667265657a656420726573657276,
                    mem[200 len 28]
    if arg2 <= 0:
        revert with 0, 'Amount must be greater than 0'
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).0x3af361d5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(coreAddress))
    call address(coreAddress).updateStateOnDeposit(address arg1, address arg2, uint256 arg3, bool arg4) with:
         gas gas_remaining wei
        args 0, 0, msg.sender, arg2, not ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).mintOnDeposit(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(coreAddress))
    call address(coreAddress).transferToReserve(address arg1, address arg2, uint256 arg3) with:
       value msg.value wei
         gas gas_remaining wei
        args address(arg1), msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(dataProviderAddress))
    staticcall address(dataProviderAddress).0xf529c9 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(address(stor58.field_0))
    call address(stor58.field_0).0x9a5c960b with:
         gas gas_remaining wei
        args 0, ext_call.return_data[32], uint32(msg.sender), 1, arg2, ext_call.return_data[32], ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Deposit(arg2, block.timestamp, arg1, msg.sender, arg3);
    uint8(stor58.field_160) = 1
}

function swapBorrowRateMode(address arg1) {
    require calldata.size - 4 >= 32
    if not uint8(stor58.field_160):
        revert with 0, 'eReentrancyGuard: reentrant call'
    uint8(stor58.field_160) = 0
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).getReserveIsActive(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x74416374696f6e20726571756972657320616e2061637469766520726573657276,
                    mem[197 len 31]
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).getReserveIsFreezed(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e416374696f6e20726571756972657320616e20756e667265657a656420726573657276,
                    mem[200 len 28]
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).getUserBorrowBalances(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[32]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x745573657220646f6573206e6f742068617665206120626f72726f7720696e2070726f6772657373206f6e207468697320726573657276,
                    mem[219 len 9]
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).getUserCurrentBorrowRateMode(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 2
    if ext_call.return_data[0] == 2:
        require ext_code.size(address(coreAddress))
        staticcall address(coreAddress).isUserAllowedToBorrowAtStable(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args address(arg1), msg.sender, ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        48,
                        0x67557365722063616e6e6f7420626f72726f77207468652073656c656374656420616d6f756e7420617420737461626c,
                        mem[212 len 16]
    require ext_call.return_data[0] <= 2
    require ext_code.size(address(coreAddress))
    call address(coreAddress).updateStateOnSwapRate(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint8 arg6) with:
         gas gas_remaining wei
        args 0, ext_call.return_data[32 len 64], ext_call.return_data[28 len 4], ext_call.return_data[32], ext_call.return_data[64], uint8(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] <= 2
    emit Swap(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], block.timestamp, arg1, msg.sender);
    uint8(stor58.field_160) = 1
}

function sub_5c6441a6(?) payable {
    require calldata.size - 4 >= 192
    if not uint8(stor58.field_160):
        revert with 0, 'eReentrancyGuard: reentrant call'
    uint8(stor58.field_160) = 0
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).getReserveIsActive(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x74416374696f6e20726571756972657320616e2061637469766520726573657276,
                    mem[197 len 31]
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).getReserveIsActive(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x74416374696f6e20726571756972657320616e2061637469766520726573657276,
                    mem[197 len 31]
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0x159bab6e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor57) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor57))
    mem[96] = 0x5c6441a600000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = arg2
    mem[164] = arg3
    mem[196] = arg4
    mem[228] = arg5
    mem[260] = arg6
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x5c6441a6 with:
         gas gas_remaining wei
        args 0, 0, address(arg2), address(arg3), arg4, arg5, arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 64
    _24 = mem[96 len 4], address(arg1) << 64
    require 0, address(arg2) << 64 <= 4294967296
    require 0, address(arg2) << 64 + 32 <= return_data.size
    require return_data.size >= mem[0, address(arg2) << 64 + 96] + 0, address(arg2) << 64 + 32 and mem[0, address(arg2) << 64 + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[0, address(arg2) << 64 + 96]
    _28 = mem[0, address(arg2) << 64 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[0, address(arg2) << 64 + 96])] = mem[0, address(arg2) << 64 + 128 len ceil32(mem[0, address(arg2) << 64 + 96])]
    if not _28 % 32:
        mem[64] = _28 + ceil32(return_data.size) + 128
        if 0 == _24:
            uint8(stor58.field_160) = 1
        mem[_28 + ceil32(return_data.size) + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_28 + ceil32(return_data.size) + 132] = 32
        mem[_28 + ceil32(return_data.size) + 164] = mem[ceil32(return_data.size) + 96]
        mem[_28 + ceil32(return_data.size) + 196 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            revert with 0, 32, mem[_28 + ceil32(return_data.size) + 164 len mem[ceil32(return_data.size) + 96] + 32]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _28 + ceil32(return_data.size) + 196] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _28 + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 228 len mem[ceil32(return_data.size) + 96] % 32]
        revert with 0, 
                    32,
                    mem[ceil32(return_data.size) + 96],
                    mem[_28 + ceil32(return_data.size) + 196 len floor32(mem[ceil32(return_data.size) + 96]) + 32]
    mem[floor32(_28) + ceil32(return_data.size) + 128] = mem[floor32(_28) + ceil32(return_data.size) + -(_28 % 32) + 160 len _28 % 32]
    mem[64] = floor32(_28) + ceil32(return_data.size) + 160
    if 0 == _24:
        uint8(stor58.field_160) = 1
    mem[floor32(_28) + ceil32(return_data.size) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[floor32(_28) + ceil32(return_data.size) + 164] = 32
    mem[floor32(_28) + ceil32(return_data.size) + 196] = mem[ceil32(return_data.size) + 96]
    mem[floor32(_28) + ceil32(return_data.size) + 228 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
    if not mem[ceil32(return_data.size) + 96] % 32:
        revert with 0, 32, mem[floor32(_28) + ceil32(return_data.size) + 196 len mem[ceil32(return_data.size) + 96] + 32]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_28) + ceil32(return_data.size) + 228] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_28) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 260 len mem[ceil32(return_data.size) + 96] % 32]
    revert with 0, 
                32,
                mem[ceil32(return_data.size) + 96],
                mem[floor32(_28) + ceil32(return_data.size) + 228 len floor32(mem[ceil32(return_data.size) + 96]) + 32]
}

function rebalanceStableBorrowRate(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not uint8(stor58.field_160):
        revert with 0, 'eReentrancyGuard: reentrant call'
    uint8(stor58.field_160) = 0
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).getReserveIsActive(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x74416374696f6e20726571756972657320616e2061637469766520726573657276,
                    mem[197 len 31]
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).getUserBorrowBalances(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[32]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x6c5573657220646f6573206e6f74206861766520616e7920626f72726f7720666f72207468697320726573657276,
                    mem[210 len 18]
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).getUserCurrentBorrowRateMode(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 2
    if ext_call.return_data[0] != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x6d546865207573657220626f72726f77206973207661726961626c6520616e642063616e6e6f7420626520726562616c616e6365,
                    mem[216 len 12]
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).getUserCurrentStableBorrowRate(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).getReserveCurrentLiquidityRate(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).getReserveCurrentStableBorrowRate(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(parametersProviderAddress))
    staticcall address(parametersProviderAddress).getRebalanceDownRateDelta() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + 1000000000 * 10^18 < 1000000000 * 10^18:
        revert with 0, 'SafeMath: addition overflow'
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] >= ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 
                            32,
                            47,
                            0x65496e746572657374207261746520726562616c616e636520636f6e646974696f6e732077657265206e6f74206d65,
                            mem[275 len 17]
    else:
        if (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0] + 1000000000 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 < 500000000 * 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0] >= ext_call.return_data[0]:
            if ext_call.return_data[0] <= (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
                revert with 0, 
                            32,
                            47,
                            0x65496e746572657374207261746520726562616c616e636520636f6e646974696f6e732077657265206e6f74206d65,
                            mem[275 len 17]
    require ext_code.size(address(coreAddress))
    call address(coreAddress).updateStateOnRebalance(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), address(arg2), ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit RebalanceStableBorrowRate(ext_call.return_data[0], ext_call.return_data[64], block.timestamp, arg1, arg2);
    uint8(stor58.field_160) = 1
}

function borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4) {
    require calldata.size - 4 >= 128
    if not uint8(stor58.field_160):
        revert with 0, 'eReentrancyGuard: reentrant call'
    uint8(stor58.field_160) = 0
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).getReserveIsActive(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x74416374696f6e20726571756972657320616e2061637469766520726573657276,
                    mem[197 len 31]
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).getReserveIsFreezed(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e416374696f6e20726571756972657320616e20756e667265657a656420726573657276,
                    mem[200 len 28]
    if arg2 <= 0:
        revert with 0, 'Amount must be greater than 0'
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).isReserveBorrowingEnabled(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 36, 0x3d52657365727665206973206e6f7420656e61626c656420666f7220626f72726f77696e, mem[712 len 28]
    if arg3 != 2:
        if arg3 != 1:
            revert with 0, 32, 35, 0x77496e76616c696420696e7465726573742072617465206d6f64652073656c65637465, mem[711 len 29]
    require arg3 <= 2
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).getReserveAvailableLiquidity(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0, 
                    32,
                    54,
                    0x775468657265206973206e6f7420656e6f756768206c697175696469747920617661696c61626c6520696e2074686520726573657276,
                    mem[730 len 10]
    require ext_code.size(address(dataProviderAddress))
    staticcall address(dataProviderAddress).calculateUserGlobalData(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    if not ext_call.return_data[32]:
        revert with 0, 'The collateral balance is 0'
    if ext_call.return_data[224]:
        revert with 0, 
                    32,
                    63,
                    0xfe54686520626f72726f7765722063616e20616c7265616479206265206c69717569646174656420736f2068652063616e6e6f7420626f72726f77206d6f72,
                    ext_call.return_data[131 len 1]
    require ext_code.size(address(stor56))
    staticcall address(stor56).calculateLoanOriginationFee(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 33, 0x6454686520616d6f756e7420746f20626f72726f7720697320746f6f20736d616c, ext_call.return_data[101 len 31]
    require ext_code.size(address(dataProviderAddress))
    staticcall address(dataProviderAddress).calculateCollateralNeededInETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) with:
            gas gas_remaining wei
           args address(arg1), arg2, ext_call.return_data[0], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[32] < ext_call.return_data[0]:
        revert with 0, 
                    32,
                    52,
                    0x655468657265206973206e6f7420656e6f75676820636f6c6c61746572616c20746f20636f7665722061206e657720626f72726f,
                    ext_call.return_data[84 len 12]
    require arg3 <= 2
    if arg3 == 1:
        require ext_code.size(address(coreAddress))
        staticcall address(coreAddress).isUserAllowedToBorrowAtStable(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args address(arg1), msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 
                        32,
                        57,
                        0x64557365722063616e6e6f7420626f72726f77207468652073656c656374656420616d6f756e742077697468206120737461626c6520726174,
                        ext_call.return_data[89 len 7]
        require ext_code.size(address(parametersProviderAddress))
        staticcall address(parametersProviderAddress).getMaxStableRateBorrowSizePercent() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if arg2 > 0:
                revert with 0, 
                            32,
                            60,
                            0x645573657220697320747279696e6720746f20626f72726f7720746f6f206d756368206c6971756964697479206174206120737461626c6520726174,
                            ext_call.return_data[156 len 4]
        else:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[65 len 31]
            if arg2 > ext_call.return_data[0] * ext_call.return_data[0] / 100:
                revert with 0, 
                            32,
                            60,
                            0x645573657220697320747279696e6720746f20626f72726f7720746f6f206d756368206c6971756964697479206174206120737461626c6520726174,
                            ext_call.return_data[156 len 4]
    require arg3 <= 2
    require ext_code.size(address(coreAddress))
    call address(coreAddress).updateStateOnBorrow(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5) with:
         gas gas_remaining wei
        args address(arg1), msg.sender, arg2, ext_call.return_data[0], uint8(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(address(coreAddress))
    call address(coreAddress).transferToUser(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(dataProviderAddress))
    staticcall address(dataProviderAddress).0xf529c9 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(address(stor58.field_0))
    call address(stor58.field_0).0x9a5c960b with:
         gas gas_remaining wei
        args address(arg1), msg.sender, 2, arg2, ext_call.return_data[32], ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Borrow(arg2, arg3, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[32], block.timestamp, arg1, msg.sender, arg4);
    uint8(stor58.field_160) = 1
}

function flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if not uint8(stor58.field_160):
        revert with 0, 'eReentrancyGuard: reentrant call'
    uint8(stor58.field_160) = 0
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).getReserveIsActive(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 33, 0x74416374696f6e20726571756972657320616e2061637469766520726573657276, mem[ceil32(arg4.length) + 229 len 31]
    if arg3 <= 0:
        revert with 0, 'Amount must be greater than 0'
    if arg2 == 0x1111111111111111111111111111111111111111:
        if eth.balance(address(coreAddress)) < arg3:
            revert with 0, 
                        32,
                        49,
                        0x5468657265206973206e6f7420656e6f756768206c697175696469747920617661696c61626c6520746f20626f72726f00,
                        mem[ceil32(arg4.length) + 245 len 15]
        require ext_code.size(address(parametersProviderAddress))
        staticcall address(parametersProviderAddress).getFlashLoanFeesInBips() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not arg3:
            revert with 0, 
                        32,
                        50,
                        0x655468652072657175657374656420616d6f756e7420697320746f6f20736d616c6c20666f72206120666c6173684c6f616e,
                        mem[ceil32(arg4.length) + 374 len 14]
        if ext_call.return_data[0] * arg3 / arg3 != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
        if not ext_call.return_data[0] * arg3 / 10000:
            revert with 0, 
                        32,
                        50,
                        0x655468652072657175657374656420616d6f756e7420697320746f6f20736d616c6c20666f72206120666c6173684c6f616e,
                        mem[ceil32(arg4.length) + 374 len 14]
        if ext_call.return_data[32] * ext_call.return_data[0] * arg3 / 10000 / ext_call.return_data[0] * arg3 / 10000 != ext_call.return_data[32]:
            revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 293 len 31]
        if ext_call.return_data[0] * arg3 / 10000 <= 0:
            revert with 0, 
                        32,
                        50,
                        0x655468652072657175657374656420616d6f756e7420697320746f6f20736d616c6c20666f72206120666c6173684c6f616e,
                        mem[ceil32(arg4.length) + 374 len 14]
        if ext_call.return_data[32] * ext_call.return_data[0] * arg3 / 10000 / 10000 <= 0:
            revert with 0, 
                        32,
                        50,
                        0x655468652072657175657374656420616d6f756e7420697320746f6f20736d616c6c20666f72206120666c6173684c6f616e,
                        mem[ceil32(arg4.length) + 374 len 14]
        require ext_code.size(address(coreAddress))
        call address(coreAddress).transferToUser(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(arg2), address(arg1), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg1)
        call arg1.executeOperation(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args address(arg2), arg3, ext_call.return_data[0] * arg3 / 10000, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg2 == 0x1111111111111111111111111111111111111111:
            if (ext_call.return_data[0] * arg3 / 10000) + eth.balance(address(coreAddress)) < eth.balance(address(coreAddress)):
                revert with 0, 'SafeMath: addition overflow'
            if eth.balance(address(coreAddress)) != (ext_call.return_data[0] * arg3 / 10000) + eth.balance(address(coreAddress)):
                revert with 0, 'tThe actual balance of the protocol is inconsisten'
        else:
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args address(coreAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (ext_call.return_data[0] * arg3 / 10000) + eth.balance(address(coreAddress)) < eth.balance(address(coreAddress)):
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] != (ext_call.return_data[0] * arg3 / 10000) + eth.balance(address(coreAddress)):
                revert with 0, 'tThe actual balance of the protocol is inconsisten'
        if ext_call.return_data[32] * ext_call.return_data[0] * arg3 / 10000 / 10000 > ext_call.return_data[0] * arg3 / 10000:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(address(coreAddress))
        call address(coreAddress).updateStateOnFlashLoan(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args address(arg2), eth.balance(address(coreAddress)), (ext_call.return_data[0] * arg3 / 10000) - (ext_call.return_data[32] * ext_call.return_data[0] * arg3 / 10000 / 10000), ext_call.return_data[32] * ext_call.return_data[0] * arg3 / 10000 / 10000
    else:
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args address(coreAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg3:
            revert with 0, 
                        32,
                        49,
                        0x5468657265206973206e6f7420656e6f756768206c697175696469747920617661696c61626c6520746f20626f72726f00,
                        mem[ceil32(arg4.length) + 245 len 15]
        require ext_code.size(address(parametersProviderAddress))
        staticcall address(parametersProviderAddress).getFlashLoanFeesInBips() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not arg3:
            revert with 0, 
                        32,
                        50,
                        0x655468652072657175657374656420616d6f756e7420697320746f6f20736d616c6c20666f72206120666c6173684c6f616e,
                        mem[ceil32(arg4.length) + 374 len 14]
        if ext_call.return_data[0] * arg3 / arg3 != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
        if not ext_call.return_data[0] * arg3 / 10000:
            revert with 0, 
                        32,
                        50,
                        0x655468652072657175657374656420616d6f756e7420697320746f6f20736d616c6c20666f72206120666c6173684c6f616e,
                        mem[ceil32(arg4.length) + 374 len 14]
        if ext_call.return_data[32] * ext_call.return_data[0] * arg3 / 10000 / ext_call.return_data[0] * arg3 / 10000 != ext_call.return_data[32]:
            revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 293 len 31]
        if ext_call.return_data[0] * arg3 / 10000 <= 0:
            revert with 0, 
                        32,
                        50,
                        0x655468652072657175657374656420616d6f756e7420697320746f6f20736d616c6c20666f72206120666c6173684c6f616e,
                        mem[ceil32(arg4.length) + 374 len 14]
        if ext_call.return_data[32] * ext_call.return_data[0] * arg3 / 10000 / 10000 <= 0:
            revert with 0, 
                        32,
                        50,
                        0x655468652072657175657374656420616d6f756e7420697320746f6f20736d616c6c20666f72206120666c6173684c6f616e,
                        mem[ceil32(arg4.length) + 374 len 14]
        require ext_code.size(address(coreAddress))
        call address(coreAddress).transferToUser(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(arg2), address(arg1), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg1)
        call arg1.executeOperation(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args address(arg2), arg3, ext_call.return_data[0] * arg3 / 10000, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg2 == 0x1111111111111111111111111111111111111111:
            if (ext_call.return_data[0] * arg3 / 10000) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if eth.balance(address(coreAddress)) != (ext_call.return_data[0] * arg3 / 10000) + ext_call.return_data[0]:
                revert with 0, 'tThe actual balance of the protocol is inconsisten'
        else:
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args address(coreAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (ext_call.return_data[0] * arg3 / 10000) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] != (ext_call.return_data[0] * arg3 / 10000) + ext_call.return_data[0]:
                revert with 0, 'tThe actual balance of the protocol is inconsisten'
        if ext_call.return_data[32] * ext_call.return_data[0] * arg3 / 10000 / 10000 > ext_call.return_data[0] * arg3 / 10000:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(address(coreAddress))
        call address(coreAddress).updateStateOnFlashLoan(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0], (ext_call.return_data[0] * arg3 / 10000) - (ext_call.return_data[32] * ext_call.return_data[0] * arg3 / 10000 / 10000), ext_call.return_data[32] * ext_call.return_data[0] * arg3 / 10000 / 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit FlashLoan(arg3, ext_call.return_data[0] * arg3 / 10000, ext_call.return_data[32] * ext_call.return_data[0] * arg3 / 10000 / 10000, block.timestamp, arg1, arg2);
    uint8(stor58.field_160) = 1
}

function repay(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if not uint8(stor58.field_160):
        revert with 0, 'eReentrancyGuard: reentrant call'
    uint8(stor58.field_160) = 0
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).getReserveIsActive(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x74416374696f6e20726571756972657320616e2061637469766520726573657276,
                    mem[197 len 31]
    if arg2 <= 0:
        revert with 0, 'Amount must be greater than 0'
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).getUserBorrowBalances(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(address(coreAddress))
    staticcall address(coreAddress).getUserOriginationFee(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[32]:
        revert with 0, 32, 41, 0x65546865207573657220646f6573206e6f74206861766520616e7920626f72726f772070656e64696e, mem[461 len 23]
    if arg2 == -1:
        if arg3 != msg.sender:
            revert with 0, 
                        32,
                        68,
                        0x65546f207265706179206f6e20626568616c66206f6620616e207573657220616e206578706c6963697420616d6f756e7420746f207265706179206973206e6565646564,
                        mem[488 len 28]
    if ext_call.return_data[0] + ext_call.return_data[32] < ext_call.return_data[32]:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 == -1:
        if 0x1111111111111111111111111111111111111111 == arg1:
            if msg.value < ext_call.return_data[0] + ext_call.return_data[32]:
                revert with 0, 32, 40, 0x64496e76616c6964206d73672e76616c75652073656e7420666f72207468652072657061796d656e, mem[460 len 24]
        if ext_call.return_data[0] + ext_call.return_data[32] <= ext_call.return_data[0]:
            require ext_code.size(address(coreAddress))
            call address(coreAddress).updateStateOnRepay(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, bool arg6) with:
                 gas gas_remaining wei
                args address(arg1), address(arg3), 0, ext_call.return_data[0] + ext_call.return_data[32], ext_call.return_data[64], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(addressesProvider)
            staticcall addressesProvider.getTokenDistributor() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(coreAddress))
            if 0x1111111111111111111111111111111111111111 == arg1:
                call address(coreAddress).transferToFeeCollectionAddress(address arg1, address arg2, uint256 arg3, address arg4) with:
                   value ext_call.return_data[0] + ext_call.return_data[32] wei
                     gas gas_remaining wei
                    args address(arg1), address(arg3), ext_call.return_data[0] + ext_call.return_data[32], address(ext_call.return_data[0])
            else:
                call address(coreAddress).transferToFeeCollectionAddress(address arg1, address arg2, uint256 arg3, address arg4) with:
                     gas gas_remaining wei
                    args address(arg1), address(arg3), ext_call.return_data[0] + ext_call.return_data[32], address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(dataProviderAddress))
            staticcall address(dataProviderAddress).0xf529c9 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(address(stor58.field_0))
            call address(stor58.field_0).0x6cc49eee with:
                 gas gas_remaining wei
                args address(arg1), msg.sender, 2, arg2, ext_call.return_data[32], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x6cb718f0: 0, ext_call.return_data[0] + ext_call.return_data[32], ext_call.return_data[64], block.timestamp, arg1, arg3, msg.sender
        else:
            if ext_call.return_data[0] > ext_call.return_data[0] + ext_call.return_data[32]:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(address(coreAddress))
            call address(coreAddress).updateStateOnRepay(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, bool arg6) with:
                 gas gas_remaining wei
                args address(arg1), address(arg3), ext_call.return_data[32], ext_call.return_data[0], ext_call.return_data[64], ext_call.return_data[32] == ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0]:
                require ext_code.size(addressesProvider)
                staticcall addressesProvider.getTokenDistributor() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(coreAddress))
                if 0x1111111111111111111111111111111111111111 == arg1:
                    call address(coreAddress).transferToFeeCollectionAddress(address arg1, address arg2, uint256 arg3, address arg4) with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                        args address(arg1), address(arg3), ext_call.return_data[0], address(ext_call.return_data[0])
                else:
                    call address(coreAddress).transferToFeeCollectionAddress(address arg1, address arg2, uint256 arg3, address arg4) with:
                         gas gas_remaining wei
                        args address(arg1), address(arg3), ext_call.return_data[0], address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if arg1 != 0x1111111111111111111111111111111111111111:
                require ext_code.size(address(coreAddress))
                call address(coreAddress).transferToReserve(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(arg1), msg.sender, ext_call.return_data[32]
            else:
                if ext_call.return_data[0] > msg.value:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(address(coreAddress))
                call address(coreAddress).transferToReserve(address arg1, address arg2, uint256 arg3) with:
                   value msg.value - ext_call.return_data[0] wei
                     gas gas_remaining wei
                    args address(arg1), msg.sender, ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(dataProviderAddress))
            staticcall address(dataProviderAddress).0xf529c9 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(address(stor58.field_0))
            call address(stor58.field_0).0x6cc49eee with:
                 gas gas_remaining wei
                args address(arg1), msg.sender, 2, arg2, ext_call.return_data[32], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x6cb718f0: ext_call.return_data[32], ext_call.return_data[0], ext_call.return_data[64], block.timestamp, arg1, arg3, msg.sender
    else:
        if arg2 >= ext_call.return_data[0] + ext_call.return_data[32]:
            if 0x1111111111111111111111111111111111111111 == arg1:
                if msg.value < ext_call.return_data[0] + ext_call.return_data[32]:
                    revert with 0, 32, 40, 0x64496e76616c6964206d73672e76616c75652073656e7420666f72207468652072657061796d656e, mem[460 len 24]
            if ext_call.return_data[0] + ext_call.return_data[32] <= ext_call.return_data[0]:
                require ext_code.size(address(coreAddress))
                call address(coreAddress).updateStateOnRepay(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, bool arg6) with:
                     gas gas_remaining wei
                    args address(arg1), address(arg3), 0, ext_call.return_data[0] + ext_call.return_data[32], ext_call.return_data[64], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(addressesProvider)
                staticcall addressesProvider.getTokenDistributor() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(coreAddress))
                if 0x1111111111111111111111111111111111111111 == arg1:
                    call address(coreAddress).transferToFeeCollectionAddress(address arg1, address arg2, uint256 arg3, address arg4) with:
                       value ext_call.return_data[0] + ext_call.return_data[32] wei
                         gas gas_remaining wei
                        args address(arg1), address(arg3), ext_call.return_data[0] + ext_call.return_data[32], address(ext_call.return_data[0])
                else:
                    call address(coreAddress).transferToFeeCollectionAddress(address arg1, address arg2, uint256 arg3, address arg4) with:
                         gas gas_remaining wei
                        args address(arg1), address(arg3), ext_call.return_data[0] + ext_call.return_data[32], address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(dataProviderAddress))
                staticcall address(dataProviderAddress).0xf529c9 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(address(stor58.field_0))
                call address(stor58.field_0).0x6cc49eee with:
                     gas gas_remaining wei
                    args address(arg1), msg.sender, 2, arg2, ext_call.return_data[32], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x6cb718f0: 0, ext_call.return_data[0] + ext_call.return_data[32], ext_call.return_data[64], block.timestamp, arg1, arg3, msg.sender
            else:
                if ext_call.return_data[0] > ext_call.return_data[0] + ext_call.return_data[32]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(address(coreAddress))
                call address(coreAddress).updateStateOnRepay(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, bool arg6) with:
                     gas gas_remaining wei
                    args address(arg1), address(arg3), ext_call.return_data[32], ext_call.return_data[0], ext_call.return_data[64], ext_call.return_data[32] == ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0]:
                    require ext_code.size(addressesProvider)
                    staticcall addressesProvider.getTokenDistributor() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(coreAddress))
                    if 0x1111111111111111111111111111111111111111 == arg1:
                        call address(coreAddress).transferToFeeCollectionAddress(address arg1, address arg2, uint256 arg3, address arg4) with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining wei
                            args address(arg1), address(arg3), ext_call.return_data[0], address(ext_call.return_data[0])
                    else:
                        call address(coreAddress).transferToFeeCollectionAddress(address arg1, address arg2, uint256 arg3, address arg4) with:
                             gas gas_remaining wei
                            args address(arg1), address(arg3), ext_call.return_data[0], address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if arg1 != 0x1111111111111111111111111111111111111111:
                    require ext_code.size(address(coreAddress))
                    call address(coreAddress).transferToReserve(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg1), msg.sender, ext_call.return_data[32]
                else:
                    if ext_call.return_data[0] > msg.value:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(address(coreAddress))
                    call address(coreAddress).transferToReserve(address arg1, address arg2, uint256 arg3) with:
                       value msg.value - ext_call.return_data[0] wei
                         gas gas_remaining wei
                        args address(arg1), msg.sender, ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(dataProviderAddress))
                staticcall address(dataProviderAddress).0xf529c9 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(address(stor58.field_0))
                call address(stor58.field_0).0x6cc49eee with:
                     gas gas_remaining wei
                    args address(arg1), msg.sender, 2, arg2, ext_call.return_data[32], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x6cb718f0: ext_call.return_data[32], ext_call.return_data[0], ext_call.return_data[64], block.timestamp, arg1, arg3, msg.sender
        else:
            if 0x1111111111111111111111111111111111111111 == arg1:
                if msg.value < arg2:
                    revert with 0, 32, 40, 0x64496e76616c6964206d73672e76616c75652073656e7420666f72207468652072657061796d656e, mem[460 len 24]
            if arg2 <= ext_call.return_data[0]:
                require ext_code.size(address(coreAddress))
                call address(coreAddress).updateStateOnRepay(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, bool arg6) with:
                     gas gas_remaining wei
                    args address(arg1), address(arg3), 0, arg2, ext_call.return_data[64], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(addressesProvider)
                staticcall addressesProvider.getTokenDistributor() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(coreAddress))
                if 0x1111111111111111111111111111111111111111 == arg1:
                    call address(coreAddress).transferToFeeCollectionAddress(address arg1, address arg2, uint256 arg3, address arg4) with:
                       value arg2 wei
                         gas gas_remaining wei
                        args address(arg1), address(arg3), arg2, address(ext_call.return_data[0])
                else:
                    call address(coreAddress).transferToFeeCollectionAddress(address arg1, address arg2, uint256 arg3, address arg4) with:
                         gas gas_remaining wei
                        args address(arg1), address(arg3), arg2, address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(dataProviderAddress))
                staticcall address(dataProviderAddress).0xf529c9 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(address(stor58.field_0))
                call address(stor58.field_0).0x6cc49eee with:
                     gas gas_remaining wei
                    args address(arg1), msg.sender, 2, arg2, ext_call.return_data[32], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x6cb718f0: 0, arg2, ext_call.return_data[64], block.timestamp, arg1, arg3, msg.sender
            else:
                if ext_call.return_data[0] > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(address(coreAddress))
                call address(coreAddress).updateStateOnRepay(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, bool arg6) with:
                     gas gas_remaining wei
                    args address(arg1), address(arg3), arg2 - ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[64], arg2 - ext_call.return_data[0] == ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0]:
                    require ext_code.size(addressesProvider)
                    staticcall addressesProvider.getTokenDistributor() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(coreAddress))
                    if 0x1111111111111111111111111111111111111111 == arg1:
                        call address(coreAddress).transferToFeeCollectionAddress(address arg1, address arg2, uint256 arg3, address arg4) with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining wei
                            args address(arg1), address(arg3), ext_call.return_data[0], address(ext_call.return_data[0])
                    else:
                        call address(coreAddress).transferToFeeCollectionAddress(address arg1, address arg2, uint256 arg3, address arg4) with:
                             gas gas_remaining wei
                            args address(arg1), address(arg3), ext_call.return_data[0], address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if arg1 != 0x1111111111111111111111111111111111111111:
                    require ext_code.size(address(coreAddress))
                    call address(coreAddress).transferToReserve(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg1), msg.sender, arg2 - ext_call.return_data[0]
                else:
                    if ext_call.return_data[0] > msg.value:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(address(coreAddress))
                    call address(coreAddress).transferToReserve(address arg1, address arg2, uint256 arg3) with:
                       value msg.value - ext_call.return_data[0] wei
                         gas gas_remaining wei
                        args address(arg1), msg.sender, arg2 - ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(dataProviderAddress))
                staticcall address(dataProviderAddress).0xf529c9 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(address(stor58.field_0))
                call address(stor58.field_0).0x6cc49eee with:
                     gas gas_remaining wei
                    args address(arg1), msg.sender, 2, arg2, ext_call.return_data[32], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x6cb718f0: arg2 - ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[64], block.timestamp, arg1, arg3, msg.sender
    uint8(stor58.field_160) = 1
}



}
