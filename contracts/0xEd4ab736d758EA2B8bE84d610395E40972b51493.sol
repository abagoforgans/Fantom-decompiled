contract main {




// =====================  Runtime code  =====================


#
#  - repayBorrow(uint256 arg1)
#  - redeemUnderlying(uint256 arg1)
#  - mint(uint256 arg1)
#  - redeem(uint256 arg1)
#  - liquidateBorrow(address arg1, uint256 arg2, address arg3)
#
const isCToken = 1


uint8 stor0;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address stor3;
address adminAddress; offset 8
uint256 stor3; offset 8
address pendingAdminAddress;
address comptrollerAddress;
address interestRateModelAddress;
uint256 stor7;
uint256 reserveFactorMantissa;
uint256 accrualBlockNumber;
uint256 borrowIndex;
uint64 stor11;
uint256 stor11;
uint256 totalBorrows;
uint256 totalReserves;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of struct stor16;
address underlyingAddress;
address implementationAddress;

function name() payable {
    return name[0 len name.length]
}

function reserveFactorMantissa() payable {
    return reserveFactorMantissa
}

function totalSupply() payable {
    return totalSupply
}

function pendingAdmin() payable {
    return pendingAdminAddress
}

function decimals() payable {
    return decimals
}

function totalBorrows() payable {
    return uint256(totalBorrows)
}

function implementation() payable {
    return implementationAddress
}

function comptroller() payable {
    return comptrollerAddress
}

function accrualBlockNumber() payable {
    return accrualBlockNumber
}

function underlying() payable {
    return underlyingAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function totalReserves() payable {
    return totalReserves
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function borrowIndex() payable {
    return borrowIndex
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function interestRateModel() payable {
    return interestRateModelAddress
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function _setPendingAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        emit Failure(1, 69, 0);
        return 1
    pendingAdminAddress = arg1
    emit NewPendingAdmin(pendingAdminAddress, arg1);
    return 0
}

function getCash() payable {
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function _resignImplementation() payable {
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x646f6e6c79207468652061646d696e206d61792063616c6c205f72657369676e496d706c656d656e746174696f,
                    mem[209 len 19]
}

function _becomeImplementation(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if adminAddress != msg.sender:
        revert with 0, 
                    32,
                    45,
                    0x776f6e6c79207468652061646d696e206d61792063616c6c205f6265636f6d65496d706c656d656e746174696f,
                    mem[ceil32(arg1.length) + 241 len 19]
}

function _setComptroller(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        emit Failure(1, 63, 0);
        return 1
    require ext_code.size(arg1)
    staticcall arg1.isComptroller() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'marker method returned false'
    comptrollerAddress = arg1
    emit NewComptroller(comptrollerAddress, arg1);
    return 0
}

function _acceptAdmin() payable {
    if pendingAdminAddress != msg.sender:
        emit Failure(1, 0, 0);
        return 1
    if not msg.sender:
        emit Failure(1, 0, 0);
        return 1
    Mask(248, 0, stor3.field_8) = pendingAdminAddress
    pendingAdminAddress = 0
    emit NewAdmin(address arg1, address arg2):
                  address(stor3.field_0),
                  0,
                  pendingAdminAddress,
    emit NewPendingAdmin(address arg1, address arg2):
                         pendingAdminAddress,
                         0,
                         pendingAdminAddress,
    return 0
}

function borrowRatePerBlock() payable {
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(interestRateModelAddress)
    staticcall interestRateModelAddress.getBorrowRate(uint256 arg1, uint256 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args ext_call.return_data[0], uint256(totalBorrows), totalReserves
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function supplyRatePerBlock() payable {
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(interestRateModelAddress)
    staticcall interestRateModelAddress.getSupplyRate(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
            gas gas_remaining wei
           args 0, ext_call.return_data[28 len 4], uint256(totalBorrows), totalReserves, reserveFactorMantissa
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function borrowBalanceStored(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor16[address(arg1)].field_0:
        return 0
    if borrowIndex * stor16[address(arg1)].field_0 / stor16[address(arg1)].field_0 != borrowIndex:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x44626f72726f7742616c616e636553746f7265643a20626f72726f7742616c616e636553746f726564496e7465726e616c206661696c65,
                    mem[219 len 9]
    if not stor16[address(arg1)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x44626f72726f7742616c616e636553746f7265643a20626f72726f7742616c616e636553746f726564496e7465726e616c206661696c65,
                    mem[219 len 9]
    return (borrowIndex * stor16[address(arg1)].field_0 / stor16[address(arg1)].field_256)
}

function seize(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    require ext_code.size(comptrollerAddress)
    call comptrollerAddress.seizeAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, uint32(this.address), msg.sender, address(arg1), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        emit Failure(3, 27, ext_call.return_data[0]);
        stor0 = 1
        return 3
    if arg2 == arg1:
        emit Failure(6, 28, 0);
        stor0 = 1
        return 6
    if arg3 > balanceOf[address(arg2)]:
        emit Failure(9, 26, 3);
        stor0 = 1
        return 9
    if arg3 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        emit Failure(9, 25, 2);
        stor0 = 1
        return 9
    balanceOf[address(arg2)] -= arg3
    balanceOf[arg1] = arg3 + balanceOf[address(arg1)]
    emit 0x44ddf252: arg3, arg2, arg1
    require ext_code.size(comptrollerAddress)
    call comptrollerAddress.seizeVerify(address arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, uint32(this.address), msg.sender, address(arg1), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
    return 0
}

function exchangeRateStored() payable {
    if not totalSupply:
        return stor7
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint256(totalBorrows) + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 
                    32,
                    53,
                    0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                    mem[249 len 11]
    if totalReserves > uint256(totalBorrows) + ext_call.return_data[0]:
        revert with 0, 
                    32,
                    53,
                    0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                    mem[249 len 11]
    if not uint256(totalBorrows) + ext_call.return_data[0] - totalReserves:
        if not totalSupply:
            revert with 0, 
                        32,
                        53,
                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                        mem[313 len 11]
        return (0 / totalSupply)
    if (10^18 * uint256(totalBorrows)) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / uint256(totalBorrows) + ext_call.return_data[0] - totalReserves != 10^18:
        revert with 0, 
                    32,
                    53,
                    0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                    mem[313 len 11]
    if not totalSupply:
        revert with 0, 
                    32,
                    53,
                    0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                    mem[313 len 11]
    return ((10^18 * uint256(totalBorrows)) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply)
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    require ext_code.size(comptrollerAddress)
    call comptrollerAddress.transferAllowed(address arg1, address arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, uint32(this.address), address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        emit Failure(3, 74, ext_call.return_data[0]);
        stor0 = 1
        return 0
    if arg1 == arg2:
        emit Failure(2, 75, 0);
        stor0 = 1
        return 0
    if arg1 == msg.sender:
        if arg3 > -1:
            emit Failure(9, 75, 0);
            stor0 = 1
            return 0
        if arg3 > balanceOf[address(arg1)]:
            emit Failure(9, 76, 0);
            stor0 = 1
            return 0
        if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
            emit Failure(9, 77, 0);
            stor0 = 1
            return 0
        balanceOf[address(arg1)] -= arg3
        balanceOf[arg2] = arg3 + balanceOf[address(arg2)]
    else:
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            emit Failure(9, 75, 0);
            stor0 = 1
            return 0
        if arg3 > balanceOf[address(arg1)]:
            emit Failure(9, 76, 0);
            stor0 = 1
            return 0
        if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
            emit Failure(9, 77, 0);
            stor0 = 1
            return 0
        balanceOf[address(arg1)] -= arg3
        balanceOf[arg2] = arg3 + balanceOf[address(arg2)]
        if allowance[address(arg1)][address(msg.sender)] != -1:
            allowance[address(arg1)][address(msg.sender)] -= arg3
    emit 0x44ddf252: arg3, arg1, arg2
    require ext_code.size(comptrollerAddress)
    call comptrollerAddress.transferVerify(address arg1, address arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, uint32(this.address), address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    require ext_code.size(comptrollerAddress)
    call comptrollerAddress.transferAllowed(address arg1, address arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, uint32(this.address), msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        emit Failure(3, 74, ext_call.return_data[0]);
        stor0 = 1
        return 0
    if msg.sender == arg1:
        emit Failure(2, 75, 0);
        stor0 = 1
        return 0
    if msg.sender == msg.sender:
        if arg2 > -1:
            emit Failure(9, 75, 0);
            stor0 = 1
            return 0
        if arg2 > balanceOf[address(msg.sender)]:
            emit Failure(9, 76, 0);
            stor0 = 1
            return 0
        if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
            emit Failure(9, 77, 0);
            stor0 = 1
            return 0
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[arg1] = arg2 + balanceOf[address(arg1)]
    else:
        if arg2 > allowance[address(msg.sender)][address(msg.sender)]:
            emit Failure(9, 75, 0);
            stor0 = 1
            return 0
        if arg2 > balanceOf[address(msg.sender)]:
            emit Failure(9, 76, 0);
            stor0 = 1
            return 0
        if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
            emit Failure(9, 77, 0);
            stor0 = 1
            return 0
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[arg1] = arg2 + balanceOf[address(arg1)]
        if allowance[address(msg.sender)][address(msg.sender)] != -1:
            allowance[address(msg.sender)][address(msg.sender)] -= arg2
    emit 0x44ddf252: arg2, msg.sender, arg1
    require ext_code.size(comptrollerAddress)
    call comptrollerAddress.transferVerify(address arg1, address arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, uint32(this.address), msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
    return 1
}

function getAccountSnapshot(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor16[address(arg1)].field_0:
        if not totalSupply:
            return 0, balanceOf[address(arg1)], 0, stor7
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if uint256(totalBorrows) + ext_call.return_data[0] >= ext_call.return_data[0]:
            if totalReserves <= uint256(totalBorrows) + ext_call.return_data[0]:
                if not uint256(totalBorrows) + ext_call.return_data[0] - totalReserves:
                    if totalSupply:
                        return 0, balanceOf[address(arg1)], 0, 0 / totalSupply
                else:
                    if (10^18 * uint256(totalBorrows)) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / uint256(totalBorrows) + ext_call.return_data[0] - totalReserves == 10^18:
                        if totalSupply:
                            return 0, 
                                   balanceOf[address(arg1)],
                                   0,
                                   (10^18 * uint256(totalBorrows)) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply
    else:
        if borrowIndex * stor16[address(arg1)].field_0 / stor16[address(arg1)].field_0 == borrowIndex:
            if stor16[address(arg1)].field_256:
                if not totalSupply:
                    return 0, balanceOf[address(arg1)], borrowIndex * stor16[address(arg1)].field_0 / stor16[address(arg1)].field_256, stor7
                require ext_code.size(underlyingAddress)
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint256(totalBorrows) + ext_call.return_data[0] >= ext_call.return_data[0]:
                    if totalReserves <= uint256(totalBorrows) + ext_call.return_data[0]:
                        if not uint256(totalBorrows) + ext_call.return_data[0] - totalReserves:
                            if totalSupply:
                                return 0, 
                                       balanceOf[address(arg1)],
                                       borrowIndex * stor16[address(arg1)].field_0 / stor16[address(arg1)].field_256,
                                       0 / totalSupply
                        else:
                            if (10^18 * uint256(totalBorrows)) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / uint256(totalBorrows) + ext_call.return_data[0] - totalReserves == 10^18:
                                if totalSupply:
                                    return 0, 
                                           balanceOf[address(arg1)],
                                           borrowIndex * stor16[address(arg1)].field_0 / stor16[address(arg1)].field_256,
                                           (10^18 * uint256(totalBorrows)) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply
    return 9, 0, 0, 0
}

function initialize(address arg1, address arg2, uint256 arg3, string arg4, string arg5, uint8 arg6) payable {
    require calldata.size - 4 >= 192
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if adminAddress != msg.sender:
        revert with 0, 
                    32,
                    36,
                    0xfe6f6e6c792061646d696e206d617920696e697469616c697a6520746865206d61726b65,
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 264 len 28]
    if accrualBlockNumber:
        revert with 0, 
                    32,
                    35,
                    0x746d61726b6574206d6179206f6e6c7920626520696e697469616c697a6564206f6e63,
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 263 len 29]
    if borrowIndex:
        revert with 0, 
                    32,
                    35,
                    0x746d61726b6574206d6179206f6e6c7920626520696e697469616c697a6564206f6e63,
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 263 len 29]
    stor7 = arg3
    if not arg3:
        revert with 0, 
                    32,
                    48,
                    0x65696e697469616c2065786368616e67652072617465206d7573742062652067726561746572207468616e207a65726f,
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 276 len 16]
    if adminAddress != msg.sender:
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 1
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = 63
        emit Failure(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len ceil32(arg5.length) + -arg5.length + 32], 0);
        revert with 0, 'setting comptroller failed'
    require ext_code.size(arg1)
    staticcall arg1.isComptroller() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'marker method returned false'
    comptrollerAddress = arg1
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = comptrollerAddress
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = arg1
    emit NewComptroller(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length) + 32]);
    accrualBlockNumber = block.number
    borrowIndex = 10^18
    if adminAddress != msg.sender:
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 1
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = 66
        emit Failure(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len ceil32(arg5.length) + -arg5.length + 32], 0);
        revert with 0, 
                    32,
                    34,
                    0x2e73657474696e6720696e7465726573742072617465206d6f64656c206661696c65,
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 262 len 30]
    if accrualBlockNumber != block.number:
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 10
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = 65
        emit Failure(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len ceil32(arg5.length) + -arg5.length + 32], 0);
        revert with 0, 
                    32,
                    34,
                    0x2e73657474696e6720696e7465726573742072617465206d6f64656c206661696c65,
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 262 len 30]
    require ext_code.size(arg2)
    staticcall arg2.isInterestRateModel() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'marker method returned false'
    interestRateModelAddress = arg2
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = interestRateModelAddress
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = arg2
    emit NewMarketInterestRateModel(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length) + 32]);
    name[] = Array(len=arg4.length, data=arg4[all])
    symbol[] = Array(len=arg5.length, data=arg5[all])
    decimals = arg6
    stor0 = 1
}

function initialize(address arg1, address arg2, address arg3, uint256 arg4, string arg5, string arg6, uint8 arg7) payable {
    require calldata.size - 4 >= 224
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + arg6.length + 36 <= calldata.size
    if adminAddress != msg.sender:
        revert with 0, 
                    32,
                    36,
                    0xfe6f6e6c792061646d696e206d617920696e697469616c697a6520746865206d61726b65,
                    mem[ceil32(arg5.length) + ceil32(arg6.length) + 264 len 28]
    if accrualBlockNumber:
        revert with 0, 
                    32,
                    35,
                    0x746d61726b6574206d6179206f6e6c7920626520696e697469616c697a6564206f6e63,
                    mem[ceil32(arg5.length) + ceil32(arg6.length) + 263 len 29]
    if borrowIndex:
        revert with 0, 
                    32,
                    35,
                    0x746d61726b6574206d6179206f6e6c7920626520696e697469616c697a6564206f6e63,
                    mem[ceil32(arg5.length) + ceil32(arg6.length) + 263 len 29]
    stor7 = arg4
    if not arg4:
        revert with 0, 
                    32,
                    48,
                    0x65696e697469616c2065786368616e67652072617465206d7573742062652067726561746572207468616e207a65726f,
                    mem[ceil32(arg5.length) + ceil32(arg6.length) + 276 len 16]
    if adminAddress != msg.sender:
        mem[ceil32(arg5.length) + ceil32(arg6.length) + 160] = 1
        mem[ceil32(arg5.length) + ceil32(arg6.length) + 192] = 63
        emit Failure(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg5.length) + arg6.length + 192 len ceil32(arg6.length) + -arg6.length + 32], 0);
        revert with 0, 'setting comptroller failed'
    require ext_code.size(arg2)
    staticcall arg2.isComptroller() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'marker method returned false'
    comptrollerAddress = arg2
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 160] = comptrollerAddress
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 192] = arg2
    emit NewComptroller(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg5.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length) + 32]);
    accrualBlockNumber = block.number
    borrowIndex = 10^18
    if adminAddress != msg.sender:
        mem[ceil32(arg5.length) + ceil32(arg6.length) + 160] = 1
        mem[ceil32(arg5.length) + ceil32(arg6.length) + 192] = 66
        emit Failure(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg5.length) + arg6.length + 192 len ceil32(arg6.length) + -arg6.length + 32], 0);
        revert with 0, 
                    32,
                    34,
                    0x2e73657474696e6720696e7465726573742072617465206d6f64656c206661696c65,
                    mem[ceil32(arg5.length) + ceil32(arg6.length) + 262 len 30]
    if accrualBlockNumber != block.number:
        mem[ceil32(arg5.length) + ceil32(arg6.length) + 160] = 10
        mem[ceil32(arg5.length) + ceil32(arg6.length) + 192] = 65
        emit Failure(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg5.length) + arg6.length + 192 len ceil32(arg6.length) + -arg6.length + 32], 0);
        revert with 0, 
                    32,
                    34,
                    0x2e73657474696e6720696e7465726573742072617465206d6f64656c206661696c65,
                    mem[ceil32(arg5.length) + ceil32(arg6.length) + 262 len 30]
    require ext_code.size(arg3)
    staticcall arg3.isInterestRateModel() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'marker method returned false'
    interestRateModelAddress = arg3
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 160] = interestRateModelAddress
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 192] = arg3
    emit NewMarketInterestRateModel(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg5.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length) + 32]);
    name[] = Array(len=arg5.length, data=arg5[all])
    symbol[] = Array(len=arg6.length, data=arg6[all])
    decimals = arg7
    stor0 = 1
    underlyingAddress = arg1
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function accrueInterest() payable {
    if accrualBlockNumber != block.number:
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(interestRateModelAddress)
        staticcall interestRateModelAddress.getBorrowRate(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args ext_call.return_data[0], uint256(totalBorrows), totalReserves
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 5 * 10^12:
            revert with 0, 'borrow rate is absurdly high'
        if accrualBlockNumber > block.number:
            revert with 0, 'could not calculate block delta'
        if not ext_call.return_data[0]:
            if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                emit Failure(9, 4, 2);
                return 9
            if not reserveFactorMantissa:
                if totalReserves + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 5, 2);
                    return 9
                if borrowIndex + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 3, 2);
                    return 9
                accrualBlockNumber = block.number
                borrowIndex += 0 / 10^18
                uint256(totalBorrows) += 0 / 10^18
                totalReserves += 0 / 10^18
            else:
                if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                    emit Failure(9, 5, 2);
                    return 9
                if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                    emit Failure(9, 5, 2);
                    return 9
                if borrowIndex + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 3, 2);
                    return 9
                accrualBlockNumber = block.number
                borrowIndex += 0 / 10^18
                uint256(totalBorrows) += 0 / 10^18
                totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows));
        else:
            if (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) / ext_call.return_data[0] != block.number - accrualBlockNumber:
                emit Failure(9, 6, 2);
                return 9
            if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 4, 2);
                    return 9
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        return 9
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            return 9
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows));
                else:
                    if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                        emit Failure(9, 5, 2);
                        return 9
                    if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        return 9
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            return 9
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows));
            else:
                if (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != uint256(totalBorrows):
                    emit Failure(9, 1, 2);
                    return 9
                if uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18) < (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                    emit Failure(9, 4, 2);
                    return 9
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        return 9
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            return 9
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
                else:
                    if (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / reserveFactorMantissa != (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                        emit Failure(9, 5, 2);
                        return 9
                    if totalReserves + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18) < (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        return 9
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            return 9
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
        return 0
    else:
        return 0
}

function totalBorrowsCurrent() payable {
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    if accrualBlockNumber != block.number:
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(interestRateModelAddress)
        staticcall interestRateModelAddress.getBorrowRate(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args ext_call.return_data[0], uint256(totalBorrows), totalReserves
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 5 * 10^12:
            revert with 0, 'borrow rate is absurdly high'
        if accrualBlockNumber > block.number:
            revert with 0, 'could not calculate block delta'
        if not ext_call.return_data[0]:
            if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                emit Failure(9, 4, 2);
                revert with 0, 'accrue interest failed'
            if not reserveFactorMantissa:
                if totalReserves + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 5, 2);
                    revert with 0, 'accrue interest failed'
                if borrowIndex + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 3, 2);
                    revert with 0, 'accrue interest failed'
                accrualBlockNumber = block.number
                borrowIndex += 0 / 10^18
                uint256(totalBorrows) += 0 / 10^18
                totalReserves += 0 / 10^18
            else:
                if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                    emit Failure(9, 5, 2);
                    revert with 0, 'accrue interest failed'
                if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                    emit Failure(9, 5, 2);
                    revert with 0, 'accrue interest failed'
                if borrowIndex + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 3, 2);
                    revert with 0, 'accrue interest failed'
                accrualBlockNumber = block.number
                borrowIndex += 0 / 10^18
                uint256(totalBorrows) += 0 / 10^18
                totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows));
        else:
            if (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) / ext_call.return_data[0] != block.number - accrualBlockNumber:
                emit Failure(9, 6, 2);
                revert with 0, 'accrue interest failed'
            if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 4, 2);
                    revert with 0, 'accrue interest failed'
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows));
                else:
                    if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows));
            else:
                if (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != uint256(totalBorrows):
                    emit Failure(9, 1, 2);
                    revert with 0, 'accrue interest failed'
                if uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18) < (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                    emit Failure(9, 4, 2);
                    revert with 0, 'accrue interest failed'
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
                else:
                    if (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / reserveFactorMantissa != (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if totalReserves + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18) < (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
    stor0 = 1
    return uint256(totalBorrows)
}

function _setInterestRateModel(address arg1) payable {
    require calldata.size - 4 >= 32
    if accrualBlockNumber != block.number:
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(interestRateModelAddress)
        staticcall interestRateModelAddress.getBorrowRate(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args ext_call.return_data[0], uint256(totalBorrows), totalReserves
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 5 * 10^12:
            revert with 0, 'borrow rate is absurdly high'
        if accrualBlockNumber > block.number:
            revert with 0, 'could not calculate block delta'
        if not ext_call.return_data[0]:
            if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                emit Failure(9, 4, 2);
                emit Failure(9, 64, 0);
                return 9
            if not reserveFactorMantissa:
                if totalReserves + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 5, 2);
                    emit Failure(9, 64, 0);
                    return 9
                if borrowIndex + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 3, 2);
                    emit Failure(9, 64, 0);
                    return 9
                accrualBlockNumber = block.number
                borrowIndex += 0 / 10^18
                uint256(totalBorrows) += 0 / 10^18
                totalReserves += 0 / 10^18
            else:
                if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                    emit Failure(9, 5, 2);
                    emit Failure(9, 64, 0);
                    return 9
                if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                    emit Failure(9, 5, 2);
                    emit Failure(9, 64, 0);
                    return 9
                if borrowIndex + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 3, 2);
                    emit Failure(9, 64, 0);
                    return 9
                accrualBlockNumber = block.number
                borrowIndex += 0 / 10^18
                uint256(totalBorrows) += 0 / 10^18
                totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows));
        else:
            if (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) / ext_call.return_data[0] != block.number - accrualBlockNumber:
                emit Failure(9, 6, 2);
                emit Failure(9, 64, 0);
                return 9
            if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 4, 2);
                    emit Failure(9, 64, 0);
                    return 9
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 64, 0);
                        return 9
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 64, 0);
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 64, 0);
                            return 9
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 64, 0);
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows));
                else:
                    if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 64, 0);
                        return 9
                    if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 64, 0);
                        return 9
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 64, 0);
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 64, 0);
                            return 9
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 64, 0);
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows));
            else:
                if (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != uint256(totalBorrows):
                    emit Failure(9, 1, 2);
                    emit Failure(9, 64, 0);
                    return 9
                if uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18) < (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                    emit Failure(9, 4, 2);
                    emit Failure(9, 64, 0);
                    return 9
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 64, 0);
                        return 9
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 64, 0);
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 64, 0);
                            return 9
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 64, 0);
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
                else:
                    if (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / reserveFactorMantissa != (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 64, 0);
                        return 9
                    if totalReserves + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18) < (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 64, 0);
                        return 9
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 64, 0);
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 64, 0);
                            return 9
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 64, 0);
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
    if adminAddress != msg.sender:
        emit Failure(1, 66, 0);
        return 1
    if accrualBlockNumber != block.number:
        emit Failure(10, 65, 0);
        return 10
    require ext_code.size(arg1)
    staticcall arg1.isInterestRateModel() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'marker method returned false'
    interestRateModelAddress = arg1
    emit NewMarketInterestRateModel(interestRateModelAddress, arg1);
    return 0
}

function _setReserveFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    if accrualBlockNumber != block.number:
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(interestRateModelAddress)
        staticcall interestRateModelAddress.getBorrowRate(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args ext_call.return_data[0], uint256(totalBorrows), totalReserves
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 5 * 10^12:
            revert with 0, 'borrow rate is absurdly high'
        if accrualBlockNumber > block.number:
            revert with 0, 'could not calculate block delta'
        if not ext_call.return_data[0]:
            if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                emit Failure(9, 4, 2);
                emit Failure(9, 70, 0);
                stor0 = 1
                return 9
            if not reserveFactorMantissa:
                if totalReserves + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 5, 2);
                    emit Failure(9, 70, 0);
                    stor0 = 1
                    return 9
                if borrowIndex + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 3, 2);
                    emit Failure(9, 70, 0);
                    stor0 = 1
                    return 9
                accrualBlockNumber = block.number
                borrowIndex += 0 / 10^18
                uint256(totalBorrows) += 0 / 10^18
                totalReserves += 0 / 10^18
            else:
                if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                    emit Failure(9, 5, 2);
                    emit Failure(9, 70, 0);
                    stor0 = 1
                    return 9
                if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                    emit Failure(9, 5, 2);
                    emit Failure(9, 70, 0);
                    stor0 = 1
                    return 9
                if borrowIndex + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 3, 2);
                    emit Failure(9, 70, 0);
                    stor0 = 1
                    return 9
                accrualBlockNumber = block.number
                borrowIndex += 0 / 10^18
                uint256(totalBorrows) += 0 / 10^18
                totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows));
        else:
            if (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) / ext_call.return_data[0] != block.number - accrualBlockNumber:
                emit Failure(9, 6, 2);
                emit Failure(9, 70, 0);
                stor0 = 1
                return 9
            if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 4, 2);
                    emit Failure(9, 70, 0);
                    stor0 = 1
                    return 9
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 70, 0);
                        stor0 = 1
                        return 9
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 70, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 70, 0);
                            stor0 = 1
                            return 9
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 70, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows));
                else:
                    if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 70, 0);
                        stor0 = 1
                        return 9
                    if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 70, 0);
                        stor0 = 1
                        return 9
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 70, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 70, 0);
                            stor0 = 1
                            return 9
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 70, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows));
            else:
                if (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != uint256(totalBorrows):
                    emit Failure(9, 1, 2);
                    emit Failure(9, 70, 0);
                    stor0 = 1
                    return 9
                if uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18) < (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                    emit Failure(9, 4, 2);
                    emit Failure(9, 70, 0);
                    stor0 = 1
                    return 9
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 70, 0);
                        stor0 = 1
                        return 9
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 70, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 70, 0);
                            stor0 = 1
                            return 9
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 70, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
                else:
                    if (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / reserveFactorMantissa != (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 70, 0);
                        stor0 = 1
                        return 9
                    if totalReserves + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18) < (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 70, 0);
                        stor0 = 1
                        return 9
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 70, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 70, 0);
                            stor0 = 1
                            return 9
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 70, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
    if adminAddress != msg.sender:
        emit Failure(1, 71, 0);
        stor0 = 1
        return 1
    if accrualBlockNumber != block.number:
        emit Failure(10, 72, 0);
        stor0 = 1
        return 10
    if arg1 > 10^18:
        emit Failure(2, 73, 0);
        stor0 = 1
        return 2
    reserveFactorMantissa = arg1
    emit NewReserveFactor(reserveFactorMantissa, arg1);
    stor0 = 1
    return 0
}

function _addReserves(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    if accrualBlockNumber != block.number:
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(interestRateModelAddress)
        staticcall interestRateModelAddress.getBorrowRate(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args ext_call.return_data[0], uint256(totalBorrows), totalReserves
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 5 * 10^12:
            revert with 0, 'borrow rate is absurdly high'
        if accrualBlockNumber > block.number:
            revert with 0, 'could not calculate block delta'
        if not ext_call.return_data[0]:
            if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                emit Failure(9, 4, 2);
                emit Failure(9, 78, 0);
                stor0 = 1
                return 9
            if not reserveFactorMantissa:
                if totalReserves + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 5, 2);
                    emit Failure(9, 78, 0);
                    stor0 = 1
                    return 9
                if borrowIndex + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 3, 2);
                    emit Failure(9, 78, 0);
                    stor0 = 1
                    return 9
                accrualBlockNumber = block.number
                borrowIndex += 0 / 10^18
                uint256(totalBorrows) += 0 / 10^18
                totalReserves += 0 / 10^18
            else:
                if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                    emit Failure(9, 5, 2);
                    emit Failure(9, 78, 0);
                    stor0 = 1
                    return 9
                if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                    emit Failure(9, 5, 2);
                    emit Failure(9, 78, 0);
                    stor0 = 1
                    return 9
                if borrowIndex + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 3, 2);
                    emit Failure(9, 78, 0);
                    stor0 = 1
                    return 9
                accrualBlockNumber = block.number
                borrowIndex += 0 / 10^18
                uint256(totalBorrows) += 0 / 10^18
                totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows));
        else:
            if (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) / ext_call.return_data[0] != block.number - accrualBlockNumber:
                emit Failure(9, 6, 2);
                emit Failure(9, 78, 0);
                stor0 = 1
                return 9
            if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 4, 2);
                    emit Failure(9, 78, 0);
                    stor0 = 1
                    return 9
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 78, 0);
                        stor0 = 1
                        return 9
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 78, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 78, 0);
                            stor0 = 1
                            return 9
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 78, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows));
                else:
                    if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 78, 0);
                        stor0 = 1
                        return 9
                    if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 78, 0);
                        stor0 = 1
                        return 9
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 78, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 78, 0);
                            stor0 = 1
                            return 9
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 78, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows));
            else:
                if (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != uint256(totalBorrows):
                    emit Failure(9, 1, 2);
                    emit Failure(9, 78, 0);
                    stor0 = 1
                    return 9
                if uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18) < (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                    emit Failure(9, 4, 2);
                    emit Failure(9, 78, 0);
                    stor0 = 1
                    return 9
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 78, 0);
                        stor0 = 1
                        return 9
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 78, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 78, 0);
                            stor0 = 1
                            return 9
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 78, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
                else:
                    if (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / reserveFactorMantissa != (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 78, 0);
                        stor0 = 1
                        return 9
                    if totalReserves + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18) < (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 78, 0);
                        stor0 = 1
                        return 9
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 78, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 78, 0);
                            stor0 = 1
                            return 9
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 78, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
    if accrualBlockNumber != block.number:
        emit Failure(10, 79, 0);
        stor0 = 1
        return 10
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(underlyingAddress)
    call underlyingAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if return_data.size:
        require return_data.size == 32
        if not ext_call.return_data[0]:
            revert with 0, 'TOKEN_TRANSFER_IN_FAILED'
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'TOKEN_TRANSFER_IN_OVERFLOW'
    if totalReserves < totalReserves:
        revert with 0, 'add reserves unexpected overflow'
    emit ReservesAdded(msg.sender, 0, totalReserves);
    stor0 = 1
    return 0
}

function borrowBalanceCurrent(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    if block.number == accrualBlockNumber:
        if not stor16[address(arg1)].field_0:
            stor0 = 1
            return 0
        if borrowIndex * stor16[address(arg1)].field_0 / stor16[address(arg1)].field_0 != borrowIndex:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        55,
                        0x44626f72726f7742616c616e636553746f7265643a20626f72726f7742616c616e636553746f726564496e7465726e616c206661696c65,
                        mem[219 len 9]
        if not stor16[address(arg1)].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        55,
                        0x44626f72726f7742616c616e636553746f7265643a20626f72726f7742616c616e636553746f726564496e7465726e616c206661696c65,
                        mem[219 len 9]
    else:
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(interestRateModelAddress)
        staticcall interestRateModelAddress.getBorrowRate(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args ext_call.return_data[0], uint256(totalBorrows), totalReserves
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 5 * 10^12:
            revert with 0, 'borrow rate is absurdly high'
        if accrualBlockNumber > block.number:
            revert with 0, 'could not calculate block delta'
        if not ext_call.return_data[0]:
            if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                emit Failure(9, 4, 2);
                revert with 0, 'accrue interest failed'
            if not reserveFactorMantissa:
                if totalReserves + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 5, 2);
                    revert with 0, 'accrue interest failed'
                if borrowIndex + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 3, 2);
                    revert with 0, 'accrue interest failed'
                accrualBlockNumber = block.number
                borrowIndex += 0 / 10^18
                uint256(totalBorrows) += 0 / 10^18
                totalReserves += 0 / 10^18
            else:
                if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                    emit Failure(9, 5, 2);
                    revert with 0, 'accrue interest failed'
                if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                    emit Failure(9, 5, 2);
                    revert with 0, 'accrue interest failed'
                if borrowIndex + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 3, 2);
                    revert with 0, 'accrue interest failed'
                accrualBlockNumber = block.number
                borrowIndex += 0 / 10^18
                uint256(totalBorrows) += 0 / 10^18
                totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows));
            if not stor16[address(arg1)].field_0:
                stor0 = 1
                return 0
            if borrowIndex * stor16[address(arg1)].field_0 / stor16[address(arg1)].field_0 != borrowIndex:
                revert with 0, 
                            32,
                            55,
                            0x44626f72726f7742616c616e636553746f7265643a20626f72726f7742616c616e636553746f726564496e7465726e616c206661696c65,
                            stor11 % 1099511627776,
                            mem[672 len 4]
            if not stor16[address(arg1)].field_256:
                revert with 0, 
                            32,
                            55,
                            0x44626f72726f7742616c616e636553746f7265643a20626f72726f7742616c616e636553746f726564496e7465726e616c206661696c65,
                            stor11 % 1099511627776,
                            mem[672 len 4]
        else:
            if (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) / ext_call.return_data[0] != block.number - accrualBlockNumber:
                emit Failure(9, 6, 2);
                revert with 0, 'accrue interest failed'
            if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 4, 2);
                    revert with 0, 'accrue interest failed'
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows));
                else:
                    if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows));
                if not stor16[address(arg1)].field_0:
                    stor0 = 1
                    return 0
                if borrowIndex * stor16[address(arg1)].field_0 / stor16[address(arg1)].field_0 != borrowIndex:
                    revert with 0, 
                                32,
                                55,
                                0x44626f72726f7742616c616e636553746f7265643a20626f72726f7742616c616e636553746f726564496e7465726e616c206661696c65,
                                stor11 % 1099511627776,
                                mem[672 len 4]
                if not stor16[address(arg1)].field_256:
                    revert with 0, 
                                32,
                                55,
                                0x44626f72726f7742616c616e636553746f7265643a20626f72726f7742616c616e636553746f726564496e7465726e616c206661696c65,
                                stor11 % 1099511627776,
                                mem[672 len 4]
            else:
                if (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != uint256(totalBorrows):
                    emit Failure(9, 1, 2);
                    revert with 0, 'accrue interest failed'
                if uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18) < (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                    emit Failure(9, 4, 2);
                    revert with 0, 'accrue interest failed'
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
                else:
                    if (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / reserveFactorMantissa != (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if totalReserves + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18) < (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
                if not stor16[address(arg1)].field_0:
                    stor0 = 1
                    return 0
                if borrowIndex * stor16[address(arg1)].field_0 / stor16[address(arg1)].field_0 != borrowIndex:
                    revert with 0, 
                                32,
                                55,
                                0x44626f72726f7742616c616e636553746f7265643a20626f72726f7742616c616e636553746f726564496e7465726e616c206661696c65,
                                uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18) % 1099511627776,
                                mem[672 len 4]
                if not stor16[address(arg1)].field_256:
                    revert with 0, 
                                32,
                                55,
                                0x44626f72726f7742616c616e636553746f7265643a20626f72726f7742616c616e636553746f726564496e7465726e616c206661696c65,
                                uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18) % 1099511627776,
                                mem[672 len 4]
    ('bool', ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor16', 16)))))
    stor0 = 1
    return (borrowIndex * stor16[address(arg1)].field_0 / stor16[address(arg1)].field_256)
}

function exchangeRateCurrent() payable {
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    if block.number == accrualBlockNumber:
        if not totalSupply:
            stor0 = 1
            return stor7
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if uint256(totalBorrows) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 
                        32,
                        53,
                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                        mem[249 len 11]
        if totalReserves > uint256(totalBorrows) + ext_call.return_data[0]:
            revert with 0, 
                        32,
                        53,
                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                        mem[249 len 11]
        if not uint256(totalBorrows) + ext_call.return_data[0] - totalReserves:
            if not totalSupply:
                revert with 0, 
                            32,
                            53,
                            0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                            mem[313 len 11]
            stor0 = 1
            return (0 / totalSupply)
        if (10^18 * uint256(totalBorrows)) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / uint256(totalBorrows) + ext_call.return_data[0] - totalReserves != 10^18:
            revert with 0, 
                        32,
                        53,
                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                        mem[313 len 11]
        if not totalSupply:
            revert with 0, 
                        32,
                        53,
                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                        mem[313 len 11]
    else:
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(interestRateModelAddress)
        staticcall interestRateModelAddress.getBorrowRate(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args ext_call.return_data[0], uint256(totalBorrows), totalReserves
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 5 * 10^12:
            revert with 0, 'borrow rate is absurdly high'
        if accrualBlockNumber > block.number:
            revert with 0, 'could not calculate block delta'
        if not ext_call.return_data[0]:
            if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                emit Failure(9, 4, 2);
                revert with 0, 'accrue interest failed'
            if not reserveFactorMantissa:
                if totalReserves + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 5, 2);
                    revert with 0, 'accrue interest failed'
                if borrowIndex + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 3, 2);
                    revert with 0, 'accrue interest failed'
                accrualBlockNumber = block.number
                borrowIndex += 0 / 10^18
                uint256(totalBorrows) += 0 / 10^18
                totalReserves += 0 / 10^18
            else:
                if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                    emit Failure(9, 5, 2);
                    revert with 0, 'accrue interest failed'
                if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                    emit Failure(9, 5, 2);
                    revert with 0, 'accrue interest failed'
                if borrowIndex + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 3, 2);
                    revert with 0, 'accrue interest failed'
                accrualBlockNumber = block.number
                borrowIndex += 0 / 10^18
                uint256(totalBorrows) += 0 / 10^18
                totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows));
        else:
            if (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) / ext_call.return_data[0] != block.number - accrualBlockNumber:
                emit Failure(9, 6, 2);
                revert with 0, 'accrue interest failed'
            if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 4, 2);
                    revert with 0, 'accrue interest failed'
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows));
                else:
                    if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows));
            else:
                if (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != uint256(totalBorrows):
                    emit Failure(9, 1, 2);
                    revert with 0, 'accrue interest failed'
                if uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18) < (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                    emit Failure(9, 4, 2);
                    revert with 0, 'accrue interest failed'
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
                else:
                    if (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / reserveFactorMantissa != (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if totalReserves + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18) < (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
        if not totalSupply:
            stor0 = 1
            return stor7
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if uint256(totalBorrows) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 
                        32,
                        53,
                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                        mem[697 len 11]
        if totalReserves > uint256(totalBorrows) + ext_call.return_data[0]:
            revert with 0, 
                        32,
                        53,
                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                        mem[697 len 11]
        if not uint256(totalBorrows) + ext_call.return_data[0] - totalReserves:
            if not totalSupply:
                revert with 0, 
                            32,
                            53,
                            0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                            mem[761 len 11]
            stor0 = 1
            return (0 / totalSupply)
        if (10^18 * uint256(totalBorrows)) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / uint256(totalBorrows) + ext_call.return_data[0] - totalReserves != 10^18:
            revert with 0, 
                        32,
                        53,
                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                        mem[761 len 11]
        if not totalSupply:
            revert with 0, 
                        32,
                        53,
                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                        mem[761 len 11]
    ('bool', ('stor', ('name', 'totalSupply', 13)))
    stor0 = 1
    return ((10^18 * uint256(totalBorrows)) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply)
}

function borrow(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    if accrualBlockNumber != block.number:
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(interestRateModelAddress)
        staticcall interestRateModelAddress.getBorrowRate(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args ext_call.return_data[0], uint256(totalBorrows), totalReserves
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 5 * 10^12:
            revert with 0, 'borrow rate is absurdly high'
        if accrualBlockNumber > block.number:
            revert with 0, 'could not calculate block delta'
        if not ext_call.return_data[0]:
            if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                emit Failure(9, 4, 2);
                emit Failure(9, 8, 0);
                stor0 = 1
                return 9
            if not reserveFactorMantissa:
                if totalReserves + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 5, 2);
                    emit Failure(9, 8, 0);
                    stor0 = 1
                    return 9
                if borrowIndex + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 3, 2);
                    emit Failure(9, 8, 0);
                    stor0 = 1
                    return 9
                accrualBlockNumber = block.number
                borrowIndex += 0 / 10^18
                uint256(totalBorrows) += 0 / 10^18
                totalReserves += 0 / 10^18
            else:
                if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                    emit Failure(9, 5, 2);
                    emit Failure(9, 8, 0);
                    stor0 = 1
                    return 9
                if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                    emit Failure(9, 5, 2);
                    emit Failure(9, 8, 0);
                    stor0 = 1
                    return 9
                if borrowIndex + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 3, 2);
                    emit Failure(9, 8, 0);
                    stor0 = 1
                    return 9
                accrualBlockNumber = block.number
                borrowIndex += 0 / 10^18
                uint256(totalBorrows) += 0 / 10^18
                totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows));
        else:
            if (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) / ext_call.return_data[0] != block.number - accrualBlockNumber:
                emit Failure(9, 6, 2);
                emit Failure(9, 8, 0);
                stor0 = 1
                return 9
            if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 4, 2);
                    emit Failure(9, 8, 0);
                    stor0 = 1
                    return 9
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 8, 0);
                        stor0 = 1
                        return 9
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 8, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 8, 0);
                            stor0 = 1
                            return 9
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 8, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows));
                else:
                    if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 8, 0);
                        stor0 = 1
                        return 9
                    if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 8, 0);
                        stor0 = 1
                        return 9
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 8, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 8, 0);
                            stor0 = 1
                            return 9
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 8, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows));
            else:
                if (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != uint256(totalBorrows):
                    emit Failure(9, 1, 2);
                    emit Failure(9, 8, 0);
                    stor0 = 1
                    return 9
                if uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18) < (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                    emit Failure(9, 4, 2);
                    emit Failure(9, 8, 0);
                    stor0 = 1
                    return 9
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 8, 0);
                        stor0 = 1
                        return 9
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 8, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 8, 0);
                            stor0 = 1
                            return 9
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 8, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
                else:
                    if (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / reserveFactorMantissa != (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 8, 0);
                        stor0 = 1
                        return 9
                    if totalReserves + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18) < (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 8, 0);
                        stor0 = 1
                        return 9
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 8, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 8, 0);
                            stor0 = 1
                            return 9
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 8, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
    require ext_code.size(comptrollerAddress)
    call comptrollerAddress.borrowAllowed(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args this.address, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        emit Failure(3, 14, ext_call.return_data[0]);
        stor0 = 1
        return 3
    if accrualBlockNumber != block.number:
        emit Failure(10, 10, 0);
        stor0 = 1
        return 10
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        emit Failure(14, 9, 0);
        stor0 = 1
        return 14
    if not stor16[address(msg.sender)].field_0:
        if arg1 < 0:
            emit Failure(9, 12, 2);
            stor0 = 1
            return 9
        if arg1 + uint256(totalBorrows) < uint256(totalBorrows):
            emit Failure(9, 11, 2);
            stor0 = 1
            return 9
        require ext_code.size(underlyingAddress)
        call underlyingAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            if not ext_call.return_data[0]:
                revert with 0, 'TOKEN_TRANSFER_OUT_FAILED'
        stor16[address(msg.sender)].field_0 = arg1
        stor16[address(msg.sender)].field_256 = borrowIndex
        uint256(totalBorrows) += arg1
        emit Borrow(msg.sender, arg1, arg1, arg1 + uint256(totalBorrows));
    else:
        if borrowIndex * stor16[address(msg.sender)].field_0 / stor16[address(msg.sender)].field_0 != borrowIndex:
            emit Failure(9, 7, 2);
            stor0 = 1
            return 9
        if not stor16[address(msg.sender)].field_256:
            emit Failure(9, 7, 1);
            stor0 = 1
            return 9
        if arg1 + (borrowIndex * stor16[address(msg.sender)].field_0 / stor16[address(msg.sender)].field_256) < borrowIndex * stor16[address(msg.sender)].field_0 / stor16[address(msg.sender)].field_256:
            emit Failure(9, 12, 2);
            stor0 = 1
            return 9
        if arg1 + uint256(totalBorrows) < uint256(totalBorrows):
            emit Failure(9, 11, 2);
            stor0 = 1
            return 9
        require ext_code.size(underlyingAddress)
        call underlyingAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            if not ext_call.return_data[0]:
                revert with 0, 'TOKEN_TRANSFER_OUT_FAILED'
        stor16[address(msg.sender)].field_0 = arg1 + (borrowIndex * stor16[address(msg.sender)].field_0 / stor16[address(msg.sender)].field_256)
        stor16[address(msg.sender)].field_256 = borrowIndex
        uint256(totalBorrows) += arg1
        emit Borrow(msg.sender, arg1, arg1 + (borrowIndex * stor16[address(msg.sender)].field_0 / stor16[address(msg.sender)].field_256), arg1 + uint256(totalBorrows));
    require ext_code.size(comptrollerAddress)
    call comptrollerAddress.borrowVerify(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args this.address, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
    return 0
}

function balanceOfUnderlying(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    if block.number == accrualBlockNumber:
        if not totalSupply:
            stor0 = 1
            if not stor7:
                return 0
            if balanceOf[address(arg1)] * stor7 / stor7 != balanceOf[address(arg1)]:
                revert with 0, 'balance could not be calculated'
            return (balanceOf[address(arg1)] * stor7 / 10^18)
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if uint256(totalBorrows) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 
                        32,
                        53,
                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                        mem[313 len 11]
        if totalReserves > uint256(totalBorrows) + ext_call.return_data[0]:
            revert with 0, 
                        32,
                        53,
                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                        mem[313 len 11]
        if not uint256(totalBorrows) + ext_call.return_data[0] - totalReserves:
            if not totalSupply:
                revert with 0, 
                            32,
                            53,
                            0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                            mem[377 len 11]
            stor0 = 1
            if not 0 / totalSupply:
                return 0
            if balanceOf[address(arg1)] * 0 / totalSupply / 0 / totalSupply != balanceOf[address(arg1)]:
                revert with 0, 'balance could not be calculated'
            return (balanceOf[address(arg1)] * 0 / totalSupply / 10^18)
        if (10^18 * uint256(totalBorrows)) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / uint256(totalBorrows) + ext_call.return_data[0] - totalReserves != 10^18:
            revert with 0, 
                        32,
                        53,
                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                        mem[377 len 11]
        if not totalSupply:
            revert with 0, 
                        32,
                        53,
                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                        mem[377 len 11]
    else:
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(interestRateModelAddress)
        staticcall interestRateModelAddress.getBorrowRate(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args ext_call.return_data[0], uint256(totalBorrows), totalReserves
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 5 * 10^12:
            revert with 0, 'borrow rate is absurdly high'
        if accrualBlockNumber > block.number:
            revert with 0, 'could not calculate block delta'
        if not ext_call.return_data[0]:
            if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                emit Failure(9, 4, 2);
                revert with 0, 'accrue interest failed'
            if not reserveFactorMantissa:
                if totalReserves + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 5, 2);
                    revert with 0, 'accrue interest failed'
                if borrowIndex + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 3, 2);
                    revert with 0, 'accrue interest failed'
                accrualBlockNumber = block.number
                borrowIndex += 0 / 10^18
                uint256(totalBorrows) += 0 / 10^18
                totalReserves += 0 / 10^18
            else:
                if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                    emit Failure(9, 5, 2);
                    revert with 0, 'accrue interest failed'
                if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                    emit Failure(9, 5, 2);
                    revert with 0, 'accrue interest failed'
                if borrowIndex + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 3, 2);
                    revert with 0, 'accrue interest failed'
                accrualBlockNumber = block.number
                borrowIndex += 0 / 10^18
                uint256(totalBorrows) += 0 / 10^18
                totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows));
        else:
            if (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) / ext_call.return_data[0] != block.number - accrualBlockNumber:
                emit Failure(9, 6, 2);
                revert with 0, 'accrue interest failed'
            if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 4, 2);
                    revert with 0, 'accrue interest failed'
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows));
                else:
                    if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows));
            else:
                if (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != uint256(totalBorrows):
                    emit Failure(9, 1, 2);
                    revert with 0, 'accrue interest failed'
                if uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18) < (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                    emit Failure(9, 4, 2);
                    revert with 0, 'accrue interest failed'
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
                else:
                    if (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / reserveFactorMantissa != (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if totalReserves + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18) < (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            revert with 0, 'accrue interest failed'
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
        if not totalSupply:
            stor0 = 1
            if not stor7:
                return 0
            if balanceOf[address(arg1)] * stor7 / stor7 != balanceOf[address(arg1)]:
                revert with 0, 'balance could not be calculated'
            return (balanceOf[address(arg1)] * stor7 / 10^18)
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if uint256(totalBorrows) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 
                        32,
                        53,
                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                        mem[761 len 11]
        if totalReserves > uint256(totalBorrows) + ext_call.return_data[0]:
            revert with 0, 
                        32,
                        53,
                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                        mem[761 len 11]
        if not uint256(totalBorrows) + ext_call.return_data[0] - totalReserves:
            if not totalSupply:
                revert with 0, 
                            32,
                            53,
                            0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                            mem[825 len 11]
            stor0 = 1
            if not 0 / totalSupply:
                return 0
            if balanceOf[address(arg1)] * 0 / totalSupply / 0 / totalSupply != balanceOf[address(arg1)]:
                revert with 0, 'balance could not be calculated'
            return (balanceOf[address(arg1)] * 0 / totalSupply / 10^18)
        if (10^18 * uint256(totalBorrows)) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / uint256(totalBorrows) + ext_call.return_data[0] - totalReserves != 10^18:
            revert with 0, 
                        32,
                        53,
                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                        mem[825 len 11]
        if not totalSupply:
            revert with 0, 
                        32,
                        53,
                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                        mem[825 len 11]
    ('bool', ('stor', ('name', 'totalSupply', 13)))
    stor0 = 1
    if not (10^18 * uint256(totalBorrows)) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply:
        return 0
    if balanceOf[address(arg1)] * (10^18 * uint256(totalBorrows)) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply / (10^18 * uint256(totalBorrows)) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply != balanceOf[address(arg1)]:
        revert with 0, 'balance could not be calculated'
    return (balanceOf[address(arg1)] * (10^18 * uint256(totalBorrows)) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply / 10^18)
}

function _reduceReserves(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    if block.number == accrualBlockNumber:
        if adminAddress != msg.sender:
            emit Failure(1, 49, 0);
            stor0 = 1
            return 1
        if accrualBlockNumber != block.number:
            emit Failure(10, 51, 0);
            stor0 = 1
            return 10
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg1:
            emit Failure(14, 50, 0);
            stor0 = 1
            return 14
        if arg1 > totalReserves:
            emit Failure(2, 52, 0);
            stor0 = 1
            return 2
        if totalReserves - arg1 > totalReserves:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x6f72656475636520726573657276657320756e657870656374656420756e646572666c6f,
                        mem[200 len 28]
    else:
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(interestRateModelAddress)
        staticcall interestRateModelAddress.getBorrowRate(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args ext_call.return_data[0], uint256(totalBorrows), totalReserves
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 5 * 10^12:
            revert with 0, 'borrow rate is absurdly high'
        if accrualBlockNumber > block.number:
            revert with 0, 'could not calculate block delta'
        if not ext_call.return_data[0]:
            if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                emit Failure(9, 4, 2);
                emit Failure(9, 48, 0);
                stor0 = 1
                return 9
            if not reserveFactorMantissa:
                if totalReserves + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 5, 2);
                    emit Failure(9, 48, 0);
                    stor0 = 1
                    return 9
                if borrowIndex + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 3, 2);
                    emit Failure(9, 48, 0);
                    stor0 = 1
                    return 9
                accrualBlockNumber = block.number
                borrowIndex += 0 / 10^18
                uint256(totalBorrows) += 0 / 10^18
                totalReserves += 0 / 10^18
            else:
                if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                    emit Failure(9, 5, 2);
                    emit Failure(9, 48, 0);
                    stor0 = 1
                    return 9
                if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                    emit Failure(9, 5, 2);
                    emit Failure(9, 48, 0);
                    stor0 = 1
                    return 9
                if borrowIndex + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 3, 2);
                    emit Failure(9, 48, 0);
                    stor0 = 1
                    return 9
                accrualBlockNumber = block.number
                borrowIndex += 0 / 10^18
                uint256(totalBorrows) += 0 / 10^18
                totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows));
            if adminAddress != msg.sender:
                emit Failure(1, 49, 0);
                stor0 = 1
                return 1
            if accrualBlockNumber != block.number:
                emit Failure(10, 51, 0);
                stor0 = 1
                return 10
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg1:
                emit Failure(14, 50, 0);
                stor0 = 1
                return 14
            if arg1 > totalReserves:
                emit Failure(2, 52, 0);
                stor0 = 1
                return 2
            if totalReserves - arg1 > totalReserves:
                revert with 0, 
                            32,
                            36,
                            0x6f72656475636520726573657276657320756e657870656374656420756e646572666c6f,
                            Mask(192, 0, stor11),
                            mem[672 len 4]
        else:
            if (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) / ext_call.return_data[0] != block.number - accrualBlockNumber:
                emit Failure(9, 6, 2);
                emit Failure(9, 48, 0);
                stor0 = 1
                return 9
            if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 4, 2);
                    emit Failure(9, 48, 0);
                    stor0 = 1
                    return 9
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 48, 0);
                        stor0 = 1
                        return 9
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 48, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 48, 0);
                            stor0 = 1
                            return 9
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 48, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows));
                else:
                    if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 48, 0);
                        stor0 = 1
                        return 9
                    if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 48, 0);
                        stor0 = 1
                        return 9
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 48, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 48, 0);
                            stor0 = 1
                            return 9
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 48, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows));
                if adminAddress != msg.sender:
                    emit Failure(1, 49, 0);
                    stor0 = 1
                    return 1
                if accrualBlockNumber != block.number:
                    emit Failure(10, 51, 0);
                    stor0 = 1
                    return 10
                require ext_code.size(underlyingAddress)
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < arg1:
                    emit Failure(14, 50, 0);
                    stor0 = 1
                    return 14
                if arg1 > totalReserves:
                    emit Failure(2, 52, 0);
                    stor0 = 1
                    return 2
                if totalReserves - arg1 > totalReserves:
                    revert with 0, 
                                32,
                                36,
                                0x6f72656475636520726573657276657320756e657870656374656420756e646572666c6f,
                                Mask(192, 0, stor11),
                                mem[672 len 4]
            else:
                if (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != uint256(totalBorrows):
                    emit Failure(9, 1, 2);
                    emit Failure(9, 48, 0);
                    stor0 = 1
                    return 9
                if uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18) < (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                    emit Failure(9, 4, 2);
                    emit Failure(9, 48, 0);
                    stor0 = 1
                    return 9
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 48, 0);
                        stor0 = 1
                        return 9
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 48, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 48, 0);
                            stor0 = 1
                            return 9
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 48, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
                else:
                    if (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / reserveFactorMantissa != (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 48, 0);
                        stor0 = 1
                        return 9
                    if totalReserves + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18) < (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 48, 0);
                        stor0 = 1
                        return 9
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 48, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 48, 0);
                            stor0 = 1
                            return 9
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 48, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
                if adminAddress != msg.sender:
                    emit Failure(1, 49, 0);
                    stor0 = 1
                    return 1
                if accrualBlockNumber != block.number:
                    emit Failure(10, 51, 0);
                    stor0 = 1
                    return 10
                require ext_code.size(underlyingAddress)
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < arg1:
                    emit Failure(14, 50, 0);
                    stor0 = 1
                    return 14
                if arg1 > totalReserves:
                    emit Failure(2, 52, 0);
                    stor0 = 1
                    return 2
                if totalReserves - arg1 > totalReserves:
                    revert with 0, 
                                32,
                                36,
                                0x6f72656475636520726573657276657320756e657870656374656420756e646572666c6f,
                                Mask(192, 0, uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18)),
                                mem[672 len 4]
    ('le', ('add', ('stor', ('name', 'totalReserves', 12)), ('mul', -1, ('param', 'arg1'))), ('stor', ('name', 'totalReserves', 12)))
    totalReserves -= arg1
    require ext_code.size(underlyingAddress)
    call underlyingAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(stor3.field_0), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if return_data.size:
        require return_data.size == 32
        if not ext_call.return_data[0]:
            revert with 0, 'TOKEN_TRANSFER_OUT_FAILED'
    emit ReservesReduced(address(stor3.field_0), arg1, totalReserves - arg1);
    stor0 = 1
    return 0
}

function repayBorrowBehalf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    if block.number == accrualBlockNumber:
        require ext_code.size(comptrollerAddress)
        call comptrollerAddress.repayBorrowAllowed(address arg1, address arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 0, uint32(this.address), msg.sender, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            emit Failure(3, 56, ext_call.return_data[0]);
            stor0 = 1
            return 3
        if accrualBlockNumber != block.number:
            emit Failure(10, 57, 0);
            stor0 = 1
            return 10
        if not stor16[address(arg1)].field_0:
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(underlyingAddress)
            if arg2 != -1:
                call underlyingAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, arg2
            else:
                call underlyingAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if return_data.size:
                require return_data.size == 32
                if not ext_call.return_data[0]:
                    revert with 0, 'TOKEN_TRANSFER_IN_FAILED'
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'TOKEN_TRANSFER_IN_OVERFLOW'
            if 0 > uint256(totalBorrows):
                revert with 0, 
                            32,
                            49,
                            0xef52455041595f424f52524f575f4e45575f544f54414c5f42414c414e43455f43414c43554c4154494f4e5f4641494c45,
                            mem[469 len 15]
            stor16[address(arg1)].field_0 = 0
            stor16[address(arg1)].field_256 = borrowIndex
            emit RepayBorrow(msg.sender, address(arg1), 0, 0, uint256(totalBorrows));
        else:
            if borrowIndex * stor16[address(arg1)].field_0 / stor16[address(arg1)].field_0 != borrowIndex:
                emit Failure(9, 55, 2);
                stor0 = 1
                return 9
            if not stor16[address(arg1)].field_256:
                emit Failure(9, 55, 1);
                stor0 = 1
                return 9
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(underlyingAddress)
            if arg2 != -1:
                call underlyingAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, arg2
            else:
                call underlyingAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, borrowIndex * stor16[address(arg1)].field_0 / stor16[address(arg1)].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if return_data.size:
                require return_data.size == 32
                if not ext_call.return_data[0]:
                    revert with 0, 'TOKEN_TRANSFER_IN_FAILED'
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'TOKEN_TRANSFER_IN_OVERFLOW'
            if 0 > borrowIndex * stor16[address(arg1)].field_0 / stor16[address(arg1)].field_256:
                revert with 0, 
                            32,
                            58,
                            0x6452455041595f424f52524f575f4e45575f4143434f554e545f424f52524f575f42414c414e43455f43414c43554c4154494f4e5f4641494c45,
                            mem[478 len 6]
            if 0 > uint256(totalBorrows):
                revert with 0, 
                            32,
                            49,
                            0xef52455041595f424f52524f575f4e45575f544f54414c5f42414c414e43455f43414c43554c4154494f4e5f4641494c45,
                            mem[469 len 15]
            stor16[address(arg1)].field_0 = borrowIndex * stor16[address(arg1)].field_0 / stor16[address(arg1)].field_256
            stor16[address(arg1)].field_256 = borrowIndex
            emit RepayBorrow(msg.sender, address(arg1), 0, borrowIndex * stor16[address(arg1)].field_0 / stor16[address(arg1)].field_256, uint256(totalBorrows));
    else:
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(interestRateModelAddress)
        staticcall interestRateModelAddress.getBorrowRate(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args ext_call.return_data[0], uint256(totalBorrows), totalReserves
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 5 * 10^12:
            revert with 0, 'borrow rate is absurdly high'
        if accrualBlockNumber > block.number:
            revert with 0, 'could not calculate block delta'
        if not ext_call.return_data[0]:
            if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                emit Failure(9, 4, 2);
                emit Failure(9, 53, 0);
                stor0 = 1
                return 9
            if not reserveFactorMantissa:
                if totalReserves + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 5, 2);
                    emit Failure(9, 53, 0);
                    stor0 = 1
                    return 9
                if borrowIndex + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 3, 2);
                    emit Failure(9, 53, 0);
                    stor0 = 1
                    return 9
                accrualBlockNumber = block.number
                borrowIndex += 0 / 10^18
                uint256(totalBorrows) += 0 / 10^18
                totalReserves += 0 / 10^18
            else:
                if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                    emit Failure(9, 5, 2);
                    emit Failure(9, 53, 0);
                    stor0 = 1
                    return 9
                if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                    emit Failure(9, 5, 2);
                    emit Failure(9, 53, 0);
                    stor0 = 1
                    return 9
                if borrowIndex + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 3, 2);
                    emit Failure(9, 53, 0);
                    stor0 = 1
                    return 9
                accrualBlockNumber = block.number
                borrowIndex += 0 / 10^18
                uint256(totalBorrows) += 0 / 10^18
                totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows));
        else:
            if (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) / ext_call.return_data[0] != block.number - accrualBlockNumber:
                emit Failure(9, 6, 2);
                emit Failure(9, 53, 0);
                stor0 = 1
                return 9
            if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 4, 2);
                    emit Failure(9, 53, 0);
                    stor0 = 1
                    return 9
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 53, 0);
                        stor0 = 1
                        return 9
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 53, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 53, 0);
                            stor0 = 1
                            return 9
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 53, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows));
                else:
                    if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 53, 0);
                        stor0 = 1
                        return 9
                    if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 53, 0);
                        stor0 = 1
                        return 9
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 53, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 53, 0);
                            stor0 = 1
                            return 9
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 53, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += 0 / 10^18
                        totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows));
            else:
                if (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != uint256(totalBorrows):
                    emit Failure(9, 1, 2);
                    emit Failure(9, 53, 0);
                    stor0 = 1
                    return 9
                if uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18) < (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                    emit Failure(9, 4, 2);
                    emit Failure(9, 53, 0);
                    stor0 = 1
                    return 9
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 53, 0);
                        stor0 = 1
                        return 9
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 53, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 53, 0);
                            stor0 = 1
                            return 9
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 53, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += 0 / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
                else:
                    if (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / reserveFactorMantissa != (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 53, 0);
                        stor0 = 1
                        return 9
                    if totalReserves + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18) < (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 53, 0);
                        stor0 = 1
                        return 9
                    if not (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 53, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += 0 / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
                    else:
                        if (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (block.number * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 53, 0);
                            stor0 = 1
                            return 9
                        if borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                            emit Failure(9, 3, 2);
                            emit Failure(9, 53, 0);
                            stor0 = 1
                            return 9
                        accrualBlockNumber = block.number
                        borrowIndex += (block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                        uint256(totalBorrows) += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                        totalReserves += (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                        emit AccrueInterest(ext_call.return_data[0], (block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((block.number * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((block.number * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18));
        require ext_code.size(comptrollerAddress)
        call comptrollerAddress.repayBorrowAllowed(address arg1, address arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args this.address, msg.sender, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            emit Failure(3, 56, ext_call.return_data[0]);
            stor0 = 1
            return 3
        if accrualBlockNumber != block.number:
            emit Failure(10, 57, 0);
            stor0 = 1
            return 10
        if not stor16[address(arg1)].field_0:
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(underlyingAddress)
            if arg2 != -1:
                call underlyingAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, arg2
            else:
                call underlyingAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if return_data.size:
                require return_data.size == 32
                if not ext_call.return_data[0]:
                    revert with 0, 'TOKEN_TRANSFER_IN_FAILED'
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'TOKEN_TRANSFER_IN_OVERFLOW'
            if 0 > uint256(totalBorrows):
                revert with 0, 
                            32,
                            49,
                            0xef52455041595f424f52524f575f4e45575f544f54414c5f42414c414e43455f43414c43554c4154494f4e5f4641494c45,
                            mem[917 len 15]
            stor16[address(arg1)].field_0 = 0
            stor16[address(arg1)].field_256 = borrowIndex
            emit RepayBorrow(msg.sender, address(arg1), 0, 0, uint256(totalBorrows));
        else:
            if borrowIndex * stor16[address(arg1)].field_0 / stor16[address(arg1)].field_0 != borrowIndex:
                emit Failure(9, 55, 2);
                stor0 = 1
                return 9
            if not stor16[address(arg1)].field_256:
                emit Failure(9, 55, 1);
                stor0 = 1
                return 9
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(underlyingAddress)
            if arg2 != -1:
                call underlyingAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, arg2
            else:
                call underlyingAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, borrowIndex * stor16[address(arg1)].field_0 / stor16[address(arg1)].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if return_data.size:
                require return_data.size == 32
                if not ext_call.return_data[0]:
                    revert with 0, 'TOKEN_TRANSFER_IN_FAILED'
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'TOKEN_TRANSFER_IN_OVERFLOW'
            if 0 > borrowIndex * stor16[address(arg1)].field_0 / stor16[address(arg1)].field_256:
                revert with 0, 
                            32,
                            58,
                            0x6452455041595f424f52524f575f4e45575f4143434f554e545f424f52524f575f42414c414e43455f43414c43554c4154494f4e5f4641494c45,
                            mem[926 len 6]
            if 0 > uint256(totalBorrows):
                revert with 0, 
                            32,
                            49,
                            0xef52455041595f424f52524f575f4e45575f544f54414c5f42414c414e43455f43414c43554c4154494f4e5f4641494c45,
                            mem[917 len 15]
            stor16[address(arg1)].field_0 = borrowIndex * stor16[address(arg1)].field_0 / stor16[address(arg1)].field_256
            stor16[address(arg1)].field_256 = borrowIndex
            emit RepayBorrow(msg.sender, address(arg1), 0, borrowIndex * stor16[address(arg1)].field_0 / stor16[address(arg1)].field_256, uint256(totalBorrows));
    require ext_code.size(comptrollerAddress)
    call comptrollerAddress.repayBorrowVerify(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args this.address, msg.sender, address(arg1), 0, stor16[address(arg1)].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
    return 0
}



}
