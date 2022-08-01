contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(address arg1, uint256 arg2, address arg3)
#
uint8 stor0; offset 160
address owner;
uint256 stor1;
address treasuryAddress;
uint256 totalDebt;
uint256 sub_33496361;
uint256 sub_c31c6fb9;
mapping of struct userInfo;

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, userInfo[arg1].field_256, userInfo[arg1].field_512
}

function sub_33496361(?) payable {
    return sub_33496361
}

function paused() payable {
    return bool(stor0)
}

function treasury() payable {
    return treasuryAddress
}

function owner() payable {
    return owner
}

function sub_c31c6fb9(?) payable {
    return sub_c31c6fb9
}

function totalDebt() payable {
    return totalDebt
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

function sub_3e13ceee(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c31c6fb9 = arg1
}

function setTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryAddress = arg1
}

function setDiscountRatio(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10000:
        revert with 0, 'invalid ratio'
    sub_33496361 = arg1
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

function setPause(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        if not stor0:
            revert with 0, 'Pausable: not paused'
        stor0 = 0
        emit Unpaused(msg.sender);
    else:
        if stor0:
            revert with 0, 'Pausable: paused'
        stor0 = 1
        emit Paused(msg.sender);
}

function getReserve() payable {
    require ext_code.size(0x3b1a7770a8c97dcb21c18a2e18d60ef1b01d6dec)
    staticcall 0x3b1a7770a8c97dcb21c18a2e18d60ef1b01d6dec.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < totalDebt:
        revert with 0, 17
    return (ext_call.return_data[0] - totalDebt)
}

function getMarketPrice() payable {
    require ext_code.size(0x9e5719236e2ce62dc286ac89ae5a0fa142ae3aa8)
    staticcall 0x9e5719236e2ce62dc286ac89ae5a0fa142ae3aa8.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(0x9e5719236e2ce62dc286ac89ae5a0fa142ae3aa8)
    staticcall 0x9e5719236e2ce62dc286ac89ae5a0fa142ae3aa8.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != 0x3b1a7770a8c97dcb21c18a2e18d60ef1b01d6dec:
        if Mask(112, 0, ext_call.return_data[0]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        return (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
    if Mask(112, 0, ext_call.return_data[32]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 17
    if not Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 18
    return (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
}

function getBondPrice() payable {
    require ext_code.size(0x9e5719236e2ce62dc286ac89ae5a0fa142ae3aa8)
    staticcall 0x9e5719236e2ce62dc286ac89ae5a0fa142ae3aa8.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(0x9e5719236e2ce62dc286ac89ae5a0fa142ae3aa8)
    staticcall 0x9e5719236e2ce62dc286ac89ae5a0fa142ae3aa8.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != 0x3b1a7770a8c97dcb21c18a2e18d60ef1b01d6dec:
        if Mask(112, 0, ext_call.return_data[0]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and sub_33496361 > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * sub_33496361 / 10000:
            revert with 0, 17
        return ((10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * sub_33496361 / 10000))
    if Mask(112, 0, ext_call.return_data[32]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 17
    if not Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 18
    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) and sub_33496361 > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 17
    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * sub_33496361 / 10000:
        revert with 0, 17
    return ((10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * sub_33496361 / 10000))
}

function getAmountOut(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x9e5719236e2ce62dc286ac89ae5a0fa142ae3aa8)
    staticcall 0x9e5719236e2ce62dc286ac89ae5a0fa142ae3aa8.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(0x9e5719236e2ce62dc286ac89ae5a0fa142ae3aa8)
    staticcall 0x9e5719236e2ce62dc286ac89ae5a0fa142ae3aa8.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != 0x3b1a7770a8c97dcb21c18a2e18d60ef1b01d6dec:
        if Mask(112, 0, ext_call.return_data[0]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and sub_33496361 > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * sub_33496361 / 10000:
            revert with 0, 17
        if arg1 and 10^18 > -1 / arg1:
            revert with 0, 17
        if not (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * sub_33496361 / 10000):
            revert with 0, 18
        return (10^18 * arg1 / (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * sub_33496361 / 10000))
    if Mask(112, 0, ext_call.return_data[32]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 17
    if not Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 18
    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) and sub_33496361 > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 17
    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * sub_33496361 / 10000:
        revert with 0, 17
    if arg1 and 10^18 > -1 / arg1:
        revert with 0, 17
    if not (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * sub_33496361 / 10000):
        revert with 0, 18
    return (10^18 * arg1 / (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * sub_33496361 / 10000))
}

function bond(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0:
        revert with 0, 'Pausable: paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if userInfo[msg.sender].field_0:
        if userInfo[msg.sender].field_512 > block.timestamp:
            userInfo[msg.sender].field_0 = 0
            userInfo[msg.sender].field_256 = 0
            userInfo[msg.sender].field_512 = 0
            if userInfo[msg.sender].field_0:
                if totalDebt < userInfo[msg.sender].field_0:
                    revert with 0, 17
                totalDebt -= userInfo[msg.sender].field_0
                require ext_code.size(0x3b1a7770a8c97dcb21c18a2e18d60ef1b01d6dec)
                staticcall 0x3b1a7770a8c97dcb21c18a2e18d60ef1b01d6dec.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x3b1a7770a8c97dcb21c18a2e18d60ef1b01d6dec)
                if userInfo[msg.sender].field_0 <= ext_call.return_data[0]:
                    call 0x3b1a7770a8c97dcb21c18a2e18d60ef1b01d6dec.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, userInfo[msg.sender].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    emit Paid(msg.sender, userInfo[msg.sender].field_0);
                else:
                    call 0x3b1a7770a8c97dcb21c18a2e18d60ef1b01d6dec.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    emit Paid(msg.sender, ext_call.return_data[0]);
        else:
            if userInfo[msg.sender].field_512 < userInfo[msg.sender].field_256:
                revert with 0, 17
            if block.timestamp < userInfo[msg.sender].field_256:
                revert with 0, 17
            if userInfo[msg.sender].field_0 and block.timestamp - userInfo[msg.sender].field_256 > -1 / userInfo[msg.sender].field_0:
                revert with 0, 17
            if not userInfo[msg.sender].field_512 - userInfo[msg.sender].field_256:
                revert with 0, 18
            if userInfo[msg.sender].field_0 < (block.timestamp * userInfo[msg.sender].field_0) - (userInfo[msg.sender].field_256 * userInfo[msg.sender].field_0) / userInfo[msg.sender].field_512 - userInfo[msg.sender].field_256:
                revert with 0, 17
            userInfo[msg.sender].field_0 -= (block.timestamp * userInfo[msg.sender].field_0) - (userInfo[msg.sender].field_256 * userInfo[msg.sender].field_0) / userInfo[msg.sender].field_512 - userInfo[msg.sender].field_256
            userInfo[msg.sender].field_256 = block.timestamp
            if block.timestamp > !sub_c31c6fb9:
                revert with 0, 17
            userInfo[msg.sender].field_512 = block.timestamp + sub_c31c6fb9
            if (block.timestamp * userInfo[msg.sender].field_0) - (userInfo[msg.sender].field_256 * userInfo[msg.sender].field_0) / userInfo[msg.sender].field_512 - userInfo[msg.sender].field_256:
                if totalDebt < (block.timestamp * userInfo[msg.sender].field_0) - (userInfo[msg.sender].field_256 * userInfo[msg.sender].field_0) / userInfo[msg.sender].field_512 - userInfo[msg.sender].field_256:
                    revert with 0, 17
                totalDebt -= (block.timestamp * userInfo[msg.sender].field_0) - (userInfo[msg.sender].field_256 * userInfo[msg.sender].field_0) / userInfo[msg.sender].field_512 - userInfo[msg.sender].field_256
                require ext_code.size(0x3b1a7770a8c97dcb21c18a2e18d60ef1b01d6dec)
                staticcall 0x3b1a7770a8c97dcb21c18a2e18d60ef1b01d6dec.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x3b1a7770a8c97dcb21c18a2e18d60ef1b01d6dec)
                if (block.timestamp * userInfo[msg.sender].field_0) - (userInfo[msg.sender].field_256 * userInfo[msg.sender].field_0) / userInfo[msg.sender].field_512 - userInfo[msg.sender].field_256 <= ext_call.return_data[0]:
                    call 0x3b1a7770a8c97dcb21c18a2e18d60ef1b01d6dec.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (block.timestamp * userInfo[msg.sender].field_0) - (userInfo[msg.sender].field_256 * userInfo[msg.sender].field_0) / userInfo[msg.sender].field_512 - userInfo[msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    emit Paid(msg.sender, (block.timestamp * userInfo[msg.sender].field_0) - (userInfo[msg.sender].field_256 * userInfo[msg.sender].field_0) / userInfo[msg.sender].field_512 - userInfo[msg.sender].field_256);
                else:
                    call 0x3b1a7770a8c97dcb21c18a2e18d60ef1b01d6dec.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    emit Paid(msg.sender, ext_call.return_data[0]);
    if arg1:
        require ext_code.size(0x3b1a7770a8c97dcb21c18a2e18d60ef1b01d6dec)
        staticcall 0x3b1a7770a8c97dcb21c18a2e18d60ef1b01d6dec.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < totalDebt:
            revert with 0, 17
        require ext_code.size(0x9e5719236e2ce62dc286ac89ae5a0fa142ae3aa8)
        staticcall 0x9e5719236e2ce62dc286ac89ae5a0fa142ae3aa8.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(0x9e5719236e2ce62dc286ac89ae5a0fa142ae3aa8)
        staticcall 0x9e5719236e2ce62dc286ac89ae5a0fa142ae3aa8.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != 0x3b1a7770a8c97dcb21c18a2e18d60ef1b01d6dec:
            if Mask(112, 0, ext_call.return_data[0]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and sub_33496361 > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * sub_33496361 / 10000:
                revert with 0, 17
            if arg1 and 10^18 > -1 / arg1:
                revert with 0, 17
            if not (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * sub_33496361 / 10000):
                revert with 0, 18
            if 10^18 * arg1 / (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * sub_33496361 / 10000) > ext_call.return_data[0] - totalDebt:
                revert with 0, 'insufficient reserve'
            if totalDebt > !(10^18 * arg1 / (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * sub_33496361 / 10000)):
                revert with 0, 17
            totalDebt += 10^18 * arg1 / (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * sub_33496361 / 10000)
            if userInfo[msg.sender].field_0 > !(10^18 * arg1 / (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * sub_33496361 / 10000)):
                revert with 0, 17
            userInfo[msg.sender].field_0 += 10^18 * arg1 / (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * sub_33496361 / 10000)
            userInfo[msg.sender].field_256 = block.timestamp
            if block.timestamp > !sub_c31c6fb9:
                revert with 0, 17
            userInfo[msg.sender].field_512 = block.timestamp + sub_c31c6fb9
            require ext_code.size(0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e)
            call 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e)
            call 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e.0xa9059cbb with:
                 gas gas_remaining wei
                args treasuryAddress, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Bond(msg.sender, arg1, 10^18 * arg1 / (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * sub_33496361 / 10000));
        else:
            if Mask(112, 0, ext_call.return_data[32]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 18
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) and sub_33496361 > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) < 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * sub_33496361 / 10000:
                revert with 0, 17
            if arg1 and 10^18 > -1 / arg1:
                revert with 0, 17
            if not (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * sub_33496361 / 10000):
                revert with 0, 18
            if 10^18 * arg1 / (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * sub_33496361 / 10000) > ext_call.return_data[0] - totalDebt:
                revert with 0, 'insufficient reserve'
            if totalDebt > !(10^18 * arg1 / (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * sub_33496361 / 10000)):
                revert with 0, 17
            totalDebt += 10^18 * arg1 / (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * sub_33496361 / 10000)
            if userInfo[msg.sender].field_0 > !(10^18 * arg1 / (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * sub_33496361 / 10000)):
                revert with 0, 17
            userInfo[msg.sender].field_0 += 10^18 * arg1 / (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * sub_33496361 / 10000)
            userInfo[msg.sender].field_256 = block.timestamp
            if block.timestamp > !sub_c31c6fb9:
                revert with 0, 17
            userInfo[msg.sender].field_512 = block.timestamp + sub_c31c6fb9
            require ext_code.size(0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e)
            call 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e)
            call 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e.0xa9059cbb with:
                 gas gas_remaining wei
                args treasuryAddress, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Bond(msg.sender, arg1, 10^18 * arg1 / (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * sub_33496361 / 10000));
    stor1 = 1
}



}
