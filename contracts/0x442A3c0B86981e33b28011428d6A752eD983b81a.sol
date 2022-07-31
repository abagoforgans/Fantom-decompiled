contract main {




// =====================  Runtime code  =====================


#
#  - recoverERC20(address arg1, uint256 arg2)
#
address owner;
address nominatedOwner;
address sub_8d773203Address;
address USDCAddress;
address DAIAddress;
address sub_92e51617Address;
address sub_1a2cf1f1Address;
address sub_868289bcAddress;
address sub_017c6857Address;
address sub_45a90b10Address;
uint256 sub_de1c3985;
uint256 PRICE_PRECISION;
uint256 sub_7e3f8f17;
uint256 sub_6162db06;
uint256 sub_3b005ab4;
address timelock_address;
address custodian_address;

function sub_017c6857(?) payable {
    return sub_017c6857Address
}

function sub_1a2cf1f1(?) payable {
    return sub_1a2cf1f1Address
}

function sub_3b005ab4(?) payable {
    return sub_3b005ab4
}

function sub_45a90b10(?) payable {
    return sub_45a90b10Address
}

function nominatedOwner() payable {
    return nominatedOwner
}

function sub_6162db06(?) payable {
    return sub_6162db06
}

function custodian_address() payable {
    return custodian_address
}

function sub_7e3f8f17(?) payable {
    return sub_7e3f8f17
}

function sub_868289bc(?) payable {
    return sub_868289bcAddress
}

function USDC() payable {
    return USDCAddress
}

function sub_8d773203(?) payable {
    return sub_8d773203Address
}

function owner() payable {
    return owner
}

function sub_92e51617(?) payable {
    return sub_92e51617Address
}

function PRICE_PRECISION() payable {
    return PRICE_PRECISION
}

function timelock_address() payable {
    return timelock_address
}

function sub_de1c3985(?) payable {
    return sub_de1c3985
}

function DAI() payable {
    return DAIAddress
}

function _fallback() payable {
    revert
}

function setSlippages(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if timelock_address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Not owner or timelock'
    sub_6162db06 = arg1
    sub_3b005ab4 = arg2
}

function nominateNewOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may perform this action'
    nominatedOwner = arg1
    emit OwnerNominated(arg1);
}

function acceptOwnership() payable {
    if nominatedOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You must be nominated before you can accept ownership'
    emit OwnerChanged(owner, nominatedOwner);
    owner = nominatedOwner
    nominatedOwner = 0
}

function borrowed_frax() payable {
    require ext_code.size(sub_92e51617Address)
    staticcall sub_92e51617Address.0x3001f398 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function borrowed_collat() payable {
    require ext_code.size(sub_92e51617Address)
    staticcall sub_92e51617Address.0x5242e71d with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_08a515f3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if timelock_address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Not owner or timelock'
    sub_92e51617Address = address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xdc6663c7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    timelock_address = ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Invalid timelock'
}

function giveCollatBack(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if timelock_address != msg.sender:
        if owner != msg.sender:
            if custodian_address != msg.sender:
                revert with 0, 'Not owner, tlck, or custd'
    require ext_code.size(USDCAddress)
    call USDCAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_92e51617Address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_92e51617Address)
    call sub_92e51617Address.'ueg:' with:
         gas gas_remaining wei
        args USDCAddress, arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function giveFRAXBack(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if timelock_address != msg.sender:
        if owner != msg.sender:
            if custodian_address != msg.sender:
                revert with 0, 'Not owner, tlck, or custd'
    require ext_code.size(sub_8d773203Address)
    call sub_8d773203Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_92e51617Address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_92e51617Address)
    call sub_92e51617Address.'ueg:' with:
         gas gas_remaining wei
        args sub_8d773203Address, arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function execute(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if timelock_address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Not owner or timelock'
    mem[96 len arg3.length] = arg3[all]
    mem[arg3.length + 96] = 0
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
        args arg3[all]
    if return_data.size:
        return bool(ext_call.success), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[96] = bool(ext_call.success)
    mem[128] = 64
    mem[160] = bool(ext_call.success)
    mem[192 len ceil32(bool(ext_call.success))] = mem[128 len ceil32(bool(ext_call.success))]
    if ceil32(bool(ext_call.success)) > bool(ext_call.success):
        mem[bool(ext_call.success) + 192] = 0
    return memory
      from 96
       len ceil32(bool(ext_call.success)) + 96
}

function sub_cc11da90(?) payable {
    require calldata.size - 4 >= 128
    if timelock_address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Not owner or timelock'
    require ext_code.size(sub_1a2cf1f1Address)
    call sub_1a2cf1f1Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_45a90b10Address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_45a90b10Address)
    call sub_45a90b10Address.0x8fa892a6 with:
         gas gas_remaining wei
        args sub_1a2cf1f1Address, arg1, arg2, arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ceil32(return_data.size) + 223 < ceil32(return_data.size) + return_data.size + 192
    if not bool((2 * ceil32(return_data.size)) + 288 <= test266151307()):
        revert with 'NH{q', 65
    require return_data.size >= 96
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
}

function sub_87ce7834(?) payable {
    require calldata.size - 4 >= 32
    if timelock_address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Not owner or timelock'
    require ext_code.size(sub_1a2cf1f1Address)
    call sub_1a2cf1f1Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_45a90b10Address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_1a2cf1f1Address)
    staticcall sub_1a2cf1f1Address.get_virtual_price() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 and sub_7e3f8f17 > -1 / arg1:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if arg1 * sub_7e3f8f17 / ext_call.return_data[0] and sub_6162db06 > -1 / arg1 * sub_7e3f8f17 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not PRICE_PRECISION:
        revert with 'NH{q', 18
    require ext_code.size(sub_45a90b10Address)
    call sub_45a90b10Address.remove_liquidity_one_coin(address arg1, uint256 arg2, int128 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args sub_1a2cf1f1Address, arg1, 0, arg1 * sub_7e3f8f17 / ext_call.return_data[0] * sub_6162db06 / PRICE_PRECISION
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_a99b596b(?) payable {
    require calldata.size - 4 >= 32
    if timelock_address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Not owner or timelock'
    require ext_code.size(sub_1a2cf1f1Address)
    call sub_1a2cf1f1Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_45a90b10Address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_1a2cf1f1Address)
    staticcall sub_1a2cf1f1Address.get_virtual_price() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 and sub_7e3f8f17 > -1 / arg1:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if arg1 * sub_7e3f8f17 / ext_call.return_data[0] and sub_6162db06 > -1 / arg1 * sub_7e3f8f17 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not PRICE_PRECISION:
        revert with 'NH{q', 18
    require ext_code.size(sub_45a90b10Address)
    call sub_45a90b10Address.remove_liquidity_one_coin(address arg1, uint256 arg2, int128 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args sub_1a2cf1f1Address, arg1, 1, arg1 * sub_7e3f8f17 / ext_call.return_data[0] * sub_6162db06 / PRICE_PRECISION
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_2c492a67(?) payable {
    require calldata.size - 4 >= 32
    if timelock_address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Not owner or timelock'
    require ext_code.size(sub_1a2cf1f1Address)
    call sub_1a2cf1f1Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_45a90b10Address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_1a2cf1f1Address)
    staticcall sub_1a2cf1f1Address.get_virtual_price() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 and sub_7e3f8f17 > -1 / arg1:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if arg1 * sub_7e3f8f17 / ext_call.return_data[0] and sub_6162db06 > -1 / arg1 * sub_7e3f8f17 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not PRICE_PRECISION:
        revert with 'NH{q', 18
    if not sub_de1c3985:
        require ext_code.size(sub_45a90b10Address)
        call sub_45a90b10Address.remove_liquidity_one_coin(address arg1, uint256 arg2, int128 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args sub_1a2cf1f1Address, arg1, 2, arg1 * sub_7e3f8f17 / ext_call.return_data[0] * sub_6162db06 / PRICE_PRECISION
    else:
        if bool(bool(sub_de1c3985 < 78)) or bool(bool(sub_de1c3985 < 32)):
            if not 10^sub_de1c3985:
                revert with 'NH{q', 18
            require ext_code.size(sub_45a90b10Address)
            call sub_45a90b10Address.remove_liquidity_one_coin(address arg1, uint256 arg2, int128 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args sub_1a2cf1f1Address, arg1, 2, arg1 * sub_7e3f8f17 / ext_call.return_data[0] * sub_6162db06 / PRICE_PRECISION / 10^sub_de1c3985
        else:
            s = 10
            t = 1
            idx = sub_de1c3985
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
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
                revert with 'NH{q', 17
            if not s * t:
                revert with 'NH{q', 18
            require ext_code.size(sub_45a90b10Address)
            call sub_45a90b10Address.remove_liquidity_one_coin(address arg1, uint256 arg2, int128 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args sub_1a2cf1f1Address, arg1, 2, arg1 * sub_7e3f8f17 / ext_call.return_data[0] * sub_6162db06 / PRICE_PRECISION / s * t
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_5015d856(?) payable {
    require calldata.size - 4 >= 96
    if timelock_address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Not owner or timelock'
    if arg1:
        require ext_code.size(sub_8d773203Address)
        call sub_8d773203Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_45a90b10Address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg2:
        require ext_code.size(DAIAddress)
        call DAIAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_45a90b10Address, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg3:
        require ext_code.size(USDCAddress)
        call USDCAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_45a90b10Address, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not sub_de1c3985:
        if arg3 and 1 > -1 / arg3:
            revert with 'NH{q', 17
        if arg1 > !arg2:
            revert with 'NH{q', 17
        if arg1 + arg2 > !arg3:
            revert with 'NH{q', 17
        require ext_code.size(sub_1a2cf1f1Address)
        staticcall sub_1a2cf1f1Address.get_virtual_price() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 + arg2 + arg3 and sub_7e3f8f17 > -1 / arg1 + arg2 + arg3:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if (arg1 * sub_7e3f8f17) + (arg2 * sub_7e3f8f17) + (arg3 * sub_7e3f8f17) / ext_call.return_data[0] and sub_6162db06 > -1 / (arg1 * sub_7e3f8f17) + (arg2 * sub_7e3f8f17) + (arg3 * sub_7e3f8f17) / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not PRICE_PRECISION:
            revert with 'NH{q', 18
        require ext_code.size(sub_45a90b10Address)
        call sub_45a90b10Address.0xa3185179 with:
             gas gas_remaining wei
            args sub_1a2cf1f1Address, arg1, arg2, arg3 >> 512, (arg1 * sub_7e3f8f17) + (arg2 * sub_7e3f8f17) + (arg3 * sub_7e3f8f17) / ext_call.return_data[0] * sub_6162db06 / PRICE_PRECISION
    else:
        if bool(bool(sub_de1c3985 < 78)) or bool(bool(sub_de1c3985 < 32)):
            if arg3 and 10^sub_de1c3985 > -1 / arg3:
                revert with 'NH{q', 17
            if arg1 > !arg2:
                revert with 'NH{q', 17
            if arg1 + arg2 > !(arg3 * 10^sub_de1c3985):
                revert with 'NH{q', 17
            require ext_code.size(sub_1a2cf1f1Address)
            staticcall sub_1a2cf1f1Address.get_virtual_price() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 + arg2 + (arg3 * 10^sub_de1c3985) and sub_7e3f8f17 > -1 / arg1 + arg2 + (arg3 * 10^sub_de1c3985):
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if (arg1 * sub_7e3f8f17) + (arg2 * sub_7e3f8f17) + (arg3 * 10^sub_de1c3985 * sub_7e3f8f17) / ext_call.return_data[0] and sub_6162db06 > -1 / (arg1 * sub_7e3f8f17) + (arg2 * sub_7e3f8f17) + (arg3 * 10^sub_de1c3985 * sub_7e3f8f17) / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not PRICE_PRECISION:
                revert with 'NH{q', 18
            require ext_code.size(sub_45a90b10Address)
            call sub_45a90b10Address.0xa3185179 with:
                 gas gas_remaining wei
                args sub_1a2cf1f1Address, arg1, arg2, arg3 >> 512, (arg1 * sub_7e3f8f17) + (arg2 * sub_7e3f8f17) + (arg3 * 10^sub_de1c3985 * sub_7e3f8f17) / ext_call.return_data[0] * sub_6162db06 / PRICE_PRECISION
        else:
            s = 10
            t = 1
            idx = sub_de1c3985
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
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
                revert with 'NH{q', 17
            if arg3 and s * t > -1 / arg3:
                revert with 'NH{q', 17
            if arg1 > !arg2:
                revert with 'NH{q', 17
            if arg1 + arg2 > !(arg3 * s * t):
                revert with 'NH{q', 17
            require ext_code.size(sub_1a2cf1f1Address)
            staticcall sub_1a2cf1f1Address.get_virtual_price() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 + arg2 + (arg3 * s * t) and sub_7e3f8f17 > -1 / arg1 + arg2 + (arg3 * s * t):
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if (arg1 * sub_7e3f8f17) + (arg2 * sub_7e3f8f17) + (arg3 * s * t * sub_7e3f8f17) / ext_call.return_data[0] and sub_6162db06 > -1 / (arg1 * sub_7e3f8f17) + (arg2 * sub_7e3f8f17) + (arg3 * s * t * sub_7e3f8f17) / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not PRICE_PRECISION:
                revert with 'NH{q', 18
            require ext_code.size(sub_45a90b10Address)
            call sub_45a90b10Address.0xa3185179 with:
                 gas gas_remaining wei
                args sub_1a2cf1f1Address, arg1, arg2, arg3 >> 512, (arg1 * sub_7e3f8f17) + (arg2 * sub_7e3f8f17) + (arg3 * s * t * sub_7e3f8f17) / ext_call.return_data[0] * sub_6162db06 / PRICE_PRECISION
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function allDollarBalances() payable {
    require ext_code.size(sub_017c6857Address)
    staticcall sub_017c6857Address.get_virtual_price() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_1a2cf1f1Address)
    staticcall sub_1a2cf1f1Address.get_virtual_price() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_8d773203Address)
    staticcall sub_8d773203Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(DAIAddress)
    staticcall DAIAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(USDCAddress)
    staticcall USDCAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_de1c3985:
        if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        require ext_code.size(sub_868289bcAddress)
        staticcall sub_868289bcAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not sub_7e3f8f17:
            revert with 'NH{q', 18
        require ext_code.size(sub_017c6857Address)
        staticcall sub_017c6857Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not sub_7e3f8f17:
            revert with 'NH{q', 18
        require ext_code.size(sub_1a2cf1f1Address)
        staticcall sub_1a2cf1f1Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not sub_7e3f8f17:
            revert with 'NH{q', 18
        if ext_call.return_data[0] > !ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 2 * ext_call.return_data[0] > !ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 4 * ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17):
            revert with 'NH{q', 17
        if (4 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17) > !(ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17):
            revert with 'NH{q', 17
        if (4 * ext_call.return_data[0]) + (2 * ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17) > !(ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17):
            revert with 'NH{q', 17
        return ext_call.return_data[0], 
               0,
               ext_call.return_data[0],
               (4 * ext_call.return_data[0]) + (3 * ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17)
    if bool(bool(sub_de1c3985 < 78)) or bool(bool(sub_de1c3985 < 32)):
        if ext_call.return_data[0] and 10^sub_de1c3985 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        require ext_code.size(sub_868289bcAddress)
        staticcall sub_868289bcAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not sub_7e3f8f17:
            revert with 'NH{q', 18
        require ext_code.size(sub_017c6857Address)
        staticcall sub_017c6857Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not sub_7e3f8f17:
            revert with 'NH{q', 18
        require ext_code.size(sub_1a2cf1f1Address)
        staticcall sub_1a2cf1f1Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not sub_7e3f8f17:
            revert with 'NH{q', 18
        if ext_call.return_data[0] > !ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 2 * ext_call.return_data[0] > !(ext_call.return_data[0] * 10^sub_de1c3985):
            revert with 'NH{q', 17
        if (2 * ext_call.return_data[0]) + (ext_call.return_data[0] * 10^sub_de1c3985) > !(ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17):
            revert with 'NH{q', 17
        if (2 * ext_call.return_data[0]) + (ext_call.return_data[0] * 10^sub_de1c3985) + (ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17) > !(ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17):
            revert with 'NH{q', 17
        if (2 * ext_call.return_data[0]) + (ext_call.return_data[0] * 10^sub_de1c3985) + (2 * ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17) > !(ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17):
            revert with 'NH{q', 17
        return ext_call.return_data[0], 
               0,
               ext_call.return_data[0],
               (2 * ext_call.return_data[0]) + (ext_call.return_data[0] * 10^sub_de1c3985) + (3 * ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17)
    s = 10
    t = 1
    idx = sub_de1c3985
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
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
        revert with 'NH{q', 17
    if ext_call.return_data[0] and s * t > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(sub_868289bcAddress)
    staticcall sub_868289bcAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not sub_7e3f8f17:
        revert with 'NH{q', 18
    require ext_code.size(sub_017c6857Address)
    staticcall sub_017c6857Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not sub_7e3f8f17:
        revert with 'NH{q', 18
    require ext_code.size(sub_1a2cf1f1Address)
    staticcall sub_1a2cf1f1Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not sub_7e3f8f17:
        revert with 'NH{q', 18
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 2 * ext_call.return_data[0] > !(ext_call.return_data[0] * s * t):
        revert with 'NH{q', 17
    if (2 * ext_call.return_data[0]) + (ext_call.return_data[0] * s * t) > !(ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17):
        revert with 'NH{q', 17
    if (2 * ext_call.return_data[0]) + (ext_call.return_data[0] * s * t) + (ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17) > !(ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17):
        revert with 'NH{q', 17
    if (2 * ext_call.return_data[0]) + (ext_call.return_data[0] * s * t) + (2 * ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17) > !(ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17):
        revert with 'NH{q', 17
    return ext_call.return_data[0], 
           0,
           ext_call.return_data[0],
           (2 * ext_call.return_data[0]) + (ext_call.return_data[0] * s * t) + (3 * ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17)
}

function showAllocations() payable {
    require ext_code.size(sub_017c6857Address)
    staticcall sub_017c6857Address.get_virtual_price() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_1a2cf1f1Address)
    staticcall sub_1a2cf1f1Address.get_virtual_price() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_8d773203Address)
    staticcall sub_8d773203Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(DAIAddress)
    staticcall DAIAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(USDCAddress)
    staticcall USDCAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_de1c3985:
        if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        require ext_code.size(sub_868289bcAddress)
        staticcall sub_868289bcAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not sub_7e3f8f17:
            revert with 'NH{q', 18
        require ext_code.size(sub_017c6857Address)
        staticcall sub_017c6857Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not sub_7e3f8f17:
            revert with 'NH{q', 18
        require ext_code.size(sub_1a2cf1f1Address)
        staticcall sub_1a2cf1f1Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not sub_7e3f8f17:
            revert with 'NH{q', 18
        if ext_call.return_data[0] > !ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 2 * ext_call.return_data[0] > !ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 4 * ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17):
            revert with 'NH{q', 17
        if (4 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17) > !(ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17):
            revert with 'NH{q', 17
        if (4 * ext_call.return_data[0]) + (2 * ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17) > !(ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17):
            revert with 'NH{q', 17
        return ext_call.return_data[0], 
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17,
               ext_call.return_data[0],
               ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17,
               ext_call.return_data[0],
               ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17,
               (4 * ext_call.return_data[0]) + (3 * ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17)
    if bool(bool(sub_de1c3985 < 78)) or bool(bool(sub_de1c3985 < 32)):
        if ext_call.return_data[0] and 10^sub_de1c3985 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        require ext_code.size(sub_868289bcAddress)
        staticcall sub_868289bcAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not sub_7e3f8f17:
            revert with 'NH{q', 18
        require ext_code.size(sub_017c6857Address)
        staticcall sub_017c6857Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not sub_7e3f8f17:
            revert with 'NH{q', 18
        require ext_code.size(sub_1a2cf1f1Address)
        staticcall sub_1a2cf1f1Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not sub_7e3f8f17:
            revert with 'NH{q', 18
        if ext_call.return_data[0] > !ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 2 * ext_call.return_data[0] > !(ext_call.return_data[0] * 10^sub_de1c3985):
            revert with 'NH{q', 17
        if (2 * ext_call.return_data[0]) + (ext_call.return_data[0] * 10^sub_de1c3985) > !(ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17):
            revert with 'NH{q', 17
        if (2 * ext_call.return_data[0]) + (ext_call.return_data[0] * 10^sub_de1c3985) + (ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17) > !(ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17):
            revert with 'NH{q', 17
        if (2 * ext_call.return_data[0]) + (ext_call.return_data[0] * 10^sub_de1c3985) + (2 * ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17) > !(ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17):
            revert with 'NH{q', 17
        return ext_call.return_data[0], 
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0] * 10^sub_de1c3985,
               ext_call.return_data[0],
               ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17,
               ext_call.return_data[0],
               ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17,
               ext_call.return_data[0],
               ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17,
               (2 * ext_call.return_data[0]) + (ext_call.return_data[0] * 10^sub_de1c3985) + (3 * ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17)
    s = 10
    t = 1
    idx = sub_de1c3985
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
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
        revert with 'NH{q', 17
    if ext_call.return_data[0] and s * t > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(sub_868289bcAddress)
    staticcall sub_868289bcAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not sub_7e3f8f17:
        revert with 'NH{q', 18
    require ext_code.size(sub_017c6857Address)
    staticcall sub_017c6857Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not sub_7e3f8f17:
        revert with 'NH{q', 18
    require ext_code.size(sub_1a2cf1f1Address)
    staticcall sub_1a2cf1f1Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not sub_7e3f8f17:
        revert with 'NH{q', 18
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 2 * ext_call.return_data[0] > !(ext_call.return_data[0] * s * t):
        revert with 'NH{q', 17
    if (2 * ext_call.return_data[0]) + (ext_call.return_data[0] * s * t) > !(ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17):
        revert with 'NH{q', 17
    if (2 * ext_call.return_data[0]) + (ext_call.return_data[0] * s * t) + (ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17) > !(ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17):
        revert with 'NH{q', 17
    if (2 * ext_call.return_data[0]) + (ext_call.return_data[0] * s * t) + (2 * ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17) > !(ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17):
        revert with 'NH{q', 17
    return ext_call.return_data[0], 
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0] * s * t,
           ext_call.return_data[0],
           ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17,
           ext_call.return_data[0],
           ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17,
           ext_call.return_data[0],
           ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17,
           (2 * ext_call.return_data[0]) + (ext_call.return_data[0] * s * t) + (3 * ext_call.return_data[0] * ext_call.return_data[0] / sub_7e3f8f17)
}



}
