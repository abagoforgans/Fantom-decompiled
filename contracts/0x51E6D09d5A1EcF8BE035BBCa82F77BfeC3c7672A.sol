contract main {




// =====================  Runtime code  =====================


#
#  - recoverERC20(address arg1, uint256 arg2)
#
address owner;
address nominatedOwner;
address sub_8d773203Address;
address sub_92e51617Address;
address timelock_address;
address custodian_address;
address sub_1e9dfff8Address;
address sub_fa242a22Address;
address sub_80b793ddAddress;
address sub_56642ffbAddress;
uint256 missing_decimals;
uint256 MAX_UINT256;

function sub_1e9dfff8(?) payable {
    return sub_1e9dfff8Address
}

function MAX_UINT256() payable {
    return MAX_UINT256
}

function missing_decimals() payable {
    return missing_decimals
}

function nominatedOwner() payable {
    return nominatedOwner
}

function sub_56642ffb(?) payable {
    return sub_56642ffbAddress
}

function custodian_address() payable {
    return custodian_address
}

function sub_80b793dd(?) payable {
    return sub_80b793ddAddress
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

function timelock_address() payable {
    return timelock_address
}

function sub_fa242a22(?) payable {
    return sub_fa242a22Address
}

function _fallback() payable {
    revert
}

function setCustodian(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if timelock_address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Not owner or timelock'
    if not arg1:
        revert with 0, 'Zero address detected'
    custodian_address = arg1
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

function sub_a7d012ed(?) payable {
    if timelock_address != msg.sender:
        if owner != msg.sender:
            if custodian_address != msg.sender:
                revert with 0, 'Not owner, tlck, or custd'
    require ext_code.size(sub_1e9dfff8Address)
    call sub_1e9dfff8Address.claimComp(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_024dad45(?) payable {
    require calldata.size - 4 >= 32
    if timelock_address != msg.sender:
        if owner != msg.sender:
            if custodian_address != msg.sender:
                revert with 0, 'Not owner, tlck, or custd'
    require ext_code.size(sub_56642ffbAddress)
    call sub_56642ffbAddress.0x2e1a7d4d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1c60df4d(?) payable {
    require calldata.size - 4 >= 32
    if timelock_address != msg.sender:
        if owner != msg.sender:
            if custodian_address != msg.sender:
                revert with 0, 'Not owner, tlck, or custd'
    require ext_code.size(sub_fa242a22Address)
    call sub_fa242a22Address.redeem(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_fcfc8328(?) payable {
    require calldata.size - 4 >= 32
    if timelock_address != msg.sender:
        if owner != msg.sender:
            if custodian_address != msg.sender:
                revert with 0, 'Not owner, tlck, or custd'
    require ext_code.size(sub_fa242a22Address)
    call sub_fa242a22Address.redeemUnderlying(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function setAMOMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if timelock_address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Not owner or timelock'
    sub_92e51617Address = arg1
    require ext_code.size(arg1)
    staticcall arg1.0xdc6663c7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    timelock_address = ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Invalid timelock'
}

function showTokenBalances() payable {
    require ext_code.size(sub_8d773203Address)
    staticcall sub_8d773203Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_fa242a22Address)
    staticcall sub_fa242a22Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0]
}

function sub_c3330961(?) payable {
    require calldata.size - 4 >= 32
    if timelock_address != msg.sender:
        if owner != msg.sender:
            if custodian_address != msg.sender:
                revert with 0, 'Not owner, tlck, or custd'
    require ext_code.size(sub_80b793ddAddress)
    call sub_80b793ddAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_56642ffbAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_56642ffbAddress)
    call sub_56642ffbAddress.deposit(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9713da38(?) payable {
    require calldata.size - 4 >= 32
    if timelock_address != msg.sender:
        if owner != msg.sender:
            if custodian_address != msg.sender:
                revert with 0, 'Not owner, tlck, or custd'
    require ext_code.size(sub_8d773203Address)
    call sub_8d773203Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_fa242a22Address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_fa242a22Address)
    call sub_fa242a22Address.mint(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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

function withdrawRewards() payable {
    if timelock_address != msg.sender:
        if owner != msg.sender:
            if custodian_address != msg.sender:
                revert with 0, 'Not owner, tlck, or custd'
    require ext_code.size(sub_80b793ddAddress)
    staticcall sub_80b793ddAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_80b793ddAddress)
    call sub_80b793ddAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_56642ffbAddress)
    staticcall sub_56642ffbAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_56642ffbAddress)
    call sub_56642ffbAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function showRewards() payable {
    require ext_code.size(sub_80b793ddAddress)
    staticcall sub_80b793ddAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_1e9dfff8Address)
    staticcall sub_1e9dfff8Address.compAccrued(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_56642ffbAddress)
    staticcall sub_56642ffbAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_56642ffbAddress)
    staticcall sub_56642ffbAddress.getShareValue() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 2 * ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
        revert with 'NH{q', 17
    return ext_call.return_data[0], 
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0] * ext_call.return_data[0] / 10^18,
           (2 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
}

function dollarBalances() payable {
    require ext_code.size(sub_8d773203Address)
    staticcall sub_8d773203Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_fa242a22Address)
    staticcall sub_fa242a22Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not missing_decimals:
        if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 18 > !missing_decimals:
            revert with 'NH{q', 17
        if not missing_decimals + 18:
            require ext_code.size(sub_fa242a22Address)
            staticcall sub_fa242a22Address.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0]):
                revert with 'NH{q', 17
            return ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0]), 
                   ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0])
        if bool(bool(missing_decimals + 18 < 78)) or bool(bool(missing_decimals + 18 < 32)):
            require ext_code.size(sub_fa242a22Address)
            staticcall sub_fa242a22Address.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not 10^(missing_decimals + 18):
                revert with 'NH{q', 18
            if ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^(missing_decimals + 18)):
                revert with 'NH{q', 17
            return ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^(missing_decimals + 18)), 
                   ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^(missing_decimals + 18))
        s = 10
        t = 1
        idx = missing_decimals + 18
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
        require ext_code.size(sub_fa242a22Address)
        staticcall sub_fa242a22Address.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not s * t:
            revert with 'NH{q', 18
        if ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / s * t):
            revert with 'NH{q', 17
        return ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / s * t), 
               ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / s * t)
    if bool(bool(missing_decimals < 78)) or bool(bool(missing_decimals < 32)):
        if ext_call.return_data[0] and 10^missing_decimals > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 18 > !missing_decimals:
            revert with 'NH{q', 17
        if not missing_decimals + 18:
            require ext_code.size(sub_fa242a22Address)
            staticcall sub_fa242a22Address.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * 10^missing_decimals and ext_call.return_data[0] > -1 / ext_call.return_data[0] * 10^missing_decimals:
                revert with 'NH{q', 17
            if ext_call.return_data[0] > !(ext_call.return_data[0] * 10^missing_decimals * ext_call.return_data[0]):
                revert with 'NH{q', 17
            return ext_call.return_data[0] + (ext_call.return_data[0] * 10^missing_decimals * ext_call.return_data[0]), 
                   ext_call.return_data[0] + (ext_call.return_data[0] * 10^missing_decimals * ext_call.return_data[0])
        if bool(bool(missing_decimals + 18 < 78)) or bool(bool(missing_decimals + 18 < 32)):
            require ext_code.size(sub_fa242a22Address)
            staticcall sub_fa242a22Address.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * 10^missing_decimals and ext_call.return_data[0] > -1 / ext_call.return_data[0] * 10^missing_decimals:
                revert with 'NH{q', 17
            if not 10^(missing_decimals + 18):
                revert with 'NH{q', 18
            if ext_call.return_data[0] > !(ext_call.return_data[0] * 10^missing_decimals * ext_call.return_data[0] / 10^(missing_decimals + 18)):
                revert with 'NH{q', 17
            return ext_call.return_data[0] + (ext_call.return_data[0] * 10^missing_decimals * ext_call.return_data[0] / 10^(missing_decimals + 18)), 
                   ext_call.return_data[0] + (ext_call.return_data[0] * 10^missing_decimals * ext_call.return_data[0] / 10^(missing_decimals + 18))
        s = 10
        t = 1
        idx = missing_decimals + 18
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
        require ext_code.size(sub_fa242a22Address)
        staticcall sub_fa242a22Address.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] * 10^missing_decimals and ext_call.return_data[0] > -1 / ext_call.return_data[0] * 10^missing_decimals:
            revert with 'NH{q', 17
        if not s * t:
            revert with 'NH{q', 18
        if ext_call.return_data[0] > !(ext_call.return_data[0] * 10^missing_decimals * ext_call.return_data[0] / s * t):
            revert with 'NH{q', 17
        return ext_call.return_data[0] + (ext_call.return_data[0] * 10^missing_decimals * ext_call.return_data[0] / s * t), 
               ext_call.return_data[0] + (ext_call.return_data[0] * 10^missing_decimals * ext_call.return_data[0] / s * t)
    s = 10
    t = 1
    idx = missing_decimals
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
    if 18 > !missing_decimals:
        revert with 'NH{q', 17
    if not missing_decimals + 18:
        require ext_code.size(sub_fa242a22Address)
        staticcall sub_fa242a22Address.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] * s * t and ext_call.return_data[0] > -1 / ext_call.return_data[0] * s * t:
            revert with 'NH{q', 17
        if ext_call.return_data[0] > !(ext_call.return_data[0] * s * t * ext_call.return_data[0]):
            revert with 'NH{q', 17
        return ext_call.return_data[0] + (ext_call.return_data[0] * s * t * ext_call.return_data[0]), 
               ext_call.return_data[0] + (ext_call.return_data[0] * s * t * ext_call.return_data[0])
    if bool(bool(missing_decimals + 18 < 78)) or bool(bool(missing_decimals + 18 < 32)):
        require ext_code.size(sub_fa242a22Address)
        staticcall sub_fa242a22Address.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] * s * t and ext_call.return_data[0] > -1 / ext_call.return_data[0] * s * t:
            revert with 'NH{q', 17
        if not 10^(missing_decimals + 18):
            revert with 'NH{q', 18
        if ext_call.return_data[0] > !(ext_call.return_data[0] * s * t * ext_call.return_data[0] / 10^(missing_decimals + 18)):
            revert with 'NH{q', 17
        return ext_call.return_data[0] + (ext_call.return_data[0] * s * t * ext_call.return_data[0] / 10^(missing_decimals + 18)), 
               ext_call.return_data[0] + (ext_call.return_data[0] * s * t * ext_call.return_data[0] / 10^(missing_decimals + 18))
    u = 10
    v = 1
    idx = missing_decimals + 18
    while idx > 1:
        if u > -1 / u:
            revert with 'NH{q', 17
        if not bool(idx):
            u = u * u
            v = v
            idx = uint255(idx) * 0.5
            continue 
        u = u * u
        v = u * v
        idx = uint255(idx) * 0.5
        continue 
    if v > -1 / u:
        revert with 'NH{q', 17
    require ext_code.size(sub_fa242a22Address)
    staticcall sub_fa242a22Address.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] * s * t and ext_call.return_data[0] > -1 / ext_call.return_data[0] * s * t:
        revert with 'NH{q', 17
    if not u * v:
        revert with 'NH{q', 18
    if ext_call.return_data[0] > !(ext_call.return_data[0] * s * t * ext_call.return_data[0] / u * v):
        revert with 'NH{q', 17
    return ext_call.return_data[0] + (ext_call.return_data[0] * s * t * ext_call.return_data[0] / u * v), 
           ext_call.return_data[0] + (ext_call.return_data[0] * s * t * ext_call.return_data[0] / u * v)
}

function allDollarBalances() payable {
    require ext_code.size(sub_8d773203Address)
    staticcall sub_8d773203Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_fa242a22Address)
    staticcall sub_fa242a22Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not missing_decimals:
        if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 18 > !missing_decimals:
            revert with 'NH{q', 17
        if not missing_decimals + 18:
            require ext_code.size(sub_fa242a22Address)
            staticcall sub_fa242a22Address.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0]):
                revert with 'NH{q', 17
            return ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0]), 
                   0,
                   0,
                   ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0])
        if bool(bool(missing_decimals + 18 < 78)) or bool(bool(missing_decimals + 18 < 32)):
            require ext_code.size(sub_fa242a22Address)
            staticcall sub_fa242a22Address.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not 10^(missing_decimals + 18):
                revert with 'NH{q', 18
            if ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^(missing_decimals + 18)):
                revert with 'NH{q', 17
            return ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^(missing_decimals + 18)), 
                   0,
                   0,
                   ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^(missing_decimals + 18))
        s = 10
        t = 1
        idx = missing_decimals + 18
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
        require ext_code.size(sub_fa242a22Address)
        staticcall sub_fa242a22Address.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not s * t:
            revert with 'NH{q', 18
        if ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / s * t):
            revert with 'NH{q', 17
        return ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / s * t), 
               0,
               0,
               ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / s * t)
    if bool(bool(missing_decimals < 78)) or bool(bool(missing_decimals < 32)):
        if ext_call.return_data[0] and 10^missing_decimals > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 18 > !missing_decimals:
            revert with 'NH{q', 17
        if not missing_decimals + 18:
            require ext_code.size(sub_fa242a22Address)
            staticcall sub_fa242a22Address.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * 10^missing_decimals and ext_call.return_data[0] > -1 / ext_call.return_data[0] * 10^missing_decimals:
                revert with 'NH{q', 17
            if ext_call.return_data[0] > !(ext_call.return_data[0] * 10^missing_decimals * ext_call.return_data[0]):
                revert with 'NH{q', 17
            return ext_call.return_data[0] + (ext_call.return_data[0] * 10^missing_decimals * ext_call.return_data[0]), 
                   0,
                   0,
                   ext_call.return_data[0] + (ext_call.return_data[0] * 10^missing_decimals * ext_call.return_data[0])
        if bool(bool(missing_decimals + 18 < 78)) or bool(bool(missing_decimals + 18 < 32)):
            require ext_code.size(sub_fa242a22Address)
            staticcall sub_fa242a22Address.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * 10^missing_decimals and ext_call.return_data[0] > -1 / ext_call.return_data[0] * 10^missing_decimals:
                revert with 'NH{q', 17
            if not 10^(missing_decimals + 18):
                revert with 'NH{q', 18
            if ext_call.return_data[0] > !(ext_call.return_data[0] * 10^missing_decimals * ext_call.return_data[0] / 10^(missing_decimals + 18)):
                revert with 'NH{q', 17
            return ext_call.return_data[0] + (ext_call.return_data[0] * 10^missing_decimals * ext_call.return_data[0] / 10^(missing_decimals + 18)), 
                   0,
                   0,
                   ext_call.return_data[0] + (ext_call.return_data[0] * 10^missing_decimals * ext_call.return_data[0] / 10^(missing_decimals + 18))
        s = 10
        t = 1
        idx = missing_decimals + 18
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
        require ext_code.size(sub_fa242a22Address)
        staticcall sub_fa242a22Address.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] * 10^missing_decimals and ext_call.return_data[0] > -1 / ext_call.return_data[0] * 10^missing_decimals:
            revert with 'NH{q', 17
        if not s * t:
            revert with 'NH{q', 18
        if ext_call.return_data[0] > !(ext_call.return_data[0] * 10^missing_decimals * ext_call.return_data[0] / s * t):
            revert with 'NH{q', 17
        return ext_call.return_data[0] + (ext_call.return_data[0] * 10^missing_decimals * ext_call.return_data[0] / s * t), 
               0,
               0,
               ext_call.return_data[0] + (ext_call.return_data[0] * 10^missing_decimals * ext_call.return_data[0] / s * t)
    s = 10
    t = 1
    idx = missing_decimals
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
    if 18 > !missing_decimals:
        revert with 'NH{q', 17
    if not missing_decimals + 18:
        require ext_code.size(sub_fa242a22Address)
        staticcall sub_fa242a22Address.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] * s * t and ext_call.return_data[0] > -1 / ext_call.return_data[0] * s * t:
            revert with 'NH{q', 17
        if ext_call.return_data[0] > !(ext_call.return_data[0] * s * t * ext_call.return_data[0]):
            revert with 'NH{q', 17
        return ext_call.return_data[0] + (ext_call.return_data[0] * s * t * ext_call.return_data[0]), 
               0,
               0,
               ext_call.return_data[0] + (ext_call.return_data[0] * s * t * ext_call.return_data[0])
    if bool(bool(missing_decimals + 18 < 78)) or bool(bool(missing_decimals + 18 < 32)):
        require ext_code.size(sub_fa242a22Address)
        staticcall sub_fa242a22Address.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] * s * t and ext_call.return_data[0] > -1 / ext_call.return_data[0] * s * t:
            revert with 'NH{q', 17
        if not 10^(missing_decimals + 18):
            revert with 'NH{q', 18
        if ext_call.return_data[0] > !(ext_call.return_data[0] * s * t * ext_call.return_data[0] / 10^(missing_decimals + 18)):
            revert with 'NH{q', 17
        return ext_call.return_data[0] + (ext_call.return_data[0] * s * t * ext_call.return_data[0] / 10^(missing_decimals + 18)), 
               0,
               0,
               ext_call.return_data[0] + (ext_call.return_data[0] * s * t * ext_call.return_data[0] / 10^(missing_decimals + 18))
    u = 10
    v = 1
    idx = missing_decimals + 18
    while idx > 1:
        if u > -1 / u:
            revert with 'NH{q', 17
        if not bool(idx):
            u = u * u
            v = v
            idx = uint255(idx) * 0.5
            continue 
        u = u * u
        v = u * v
        idx = uint255(idx) * 0.5
        continue 
    if v > -1 / u:
        revert with 'NH{q', 17
    require ext_code.size(sub_fa242a22Address)
    staticcall sub_fa242a22Address.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] * s * t and ext_call.return_data[0] > -1 / ext_call.return_data[0] * s * t:
        revert with 'NH{q', 17
    if not u * v:
        revert with 'NH{q', 18
    if ext_call.return_data[0] > !(ext_call.return_data[0] * s * t * ext_call.return_data[0] / u * v):
        revert with 'NH{q', 17
    return ext_call.return_data[0] + (ext_call.return_data[0] * s * t * ext_call.return_data[0] / u * v), 
           0,
           0,
           ext_call.return_data[0] + (ext_call.return_data[0] * s * t * ext_call.return_data[0] / u * v)
}

function showAllocations() payable {
    require ext_code.size(sub_8d773203Address)
    staticcall sub_8d773203Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_fa242a22Address)
    staticcall sub_fa242a22Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not missing_decimals:
        if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 18 > !missing_decimals:
            revert with 'NH{q', 17
        if not missing_decimals + 18:
            require ext_code.size(sub_fa242a22Address)
            staticcall sub_fa242a22Address.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0]):
                revert with 'NH{q', 17
            return ext_call.return_data[0], 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0] * ext_call.return_data[0],
                   ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0])
        if bool(bool(missing_decimals + 18 < 78)) or bool(bool(missing_decimals + 18 < 32)):
            require ext_code.size(sub_fa242a22Address)
            staticcall sub_fa242a22Address.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not 10^(missing_decimals + 18):
                revert with 'NH{q', 18
            if ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^(missing_decimals + 18)):
                revert with 'NH{q', 17
            return ext_call.return_data[0], 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0] * ext_call.return_data[0] / 10^(missing_decimals + 18),
                   ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^(missing_decimals + 18))
        s = 10
        t = 1
        idx = missing_decimals + 18
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
        require ext_code.size(sub_fa242a22Address)
        staticcall sub_fa242a22Address.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not s * t:
            revert with 'NH{q', 18
        if ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / s * t):
            revert with 'NH{q', 17
        return ext_call.return_data[0], 
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0] * ext_call.return_data[0] / s * t,
               ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / s * t)
    if bool(bool(missing_decimals < 78)) or bool(bool(missing_decimals < 32)):
        if ext_call.return_data[0] and 10^missing_decimals > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 18 > !missing_decimals:
            revert with 'NH{q', 17
        if not missing_decimals + 18:
            require ext_code.size(sub_fa242a22Address)
            staticcall sub_fa242a22Address.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * 10^missing_decimals and ext_call.return_data[0] > -1 / ext_call.return_data[0] * 10^missing_decimals:
                revert with 'NH{q', 17
            if ext_call.return_data[0] > !(ext_call.return_data[0] * 10^missing_decimals * ext_call.return_data[0]):
                revert with 'NH{q', 17
            return ext_call.return_data[0], 
                   ext_call.return_data[0],
                   ext_call.return_data[0] * 10^missing_decimals,
                   ext_call.return_data[0] * 10^missing_decimals * ext_call.return_data[0],
                   ext_call.return_data[0] + (ext_call.return_data[0] * 10^missing_decimals * ext_call.return_data[0])
        if bool(bool(missing_decimals + 18 < 78)) or bool(bool(missing_decimals + 18 < 32)):
            require ext_code.size(sub_fa242a22Address)
            staticcall sub_fa242a22Address.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * 10^missing_decimals and ext_call.return_data[0] > -1 / ext_call.return_data[0] * 10^missing_decimals:
                revert with 'NH{q', 17
            if not 10^(missing_decimals + 18):
                revert with 'NH{q', 18
            if ext_call.return_data[0] > !(ext_call.return_data[0] * 10^missing_decimals * ext_call.return_data[0] / 10^(missing_decimals + 18)):
                revert with 'NH{q', 17
            return ext_call.return_data[0], 
                   ext_call.return_data[0],
                   ext_call.return_data[0] * 10^missing_decimals,
                   ext_call.return_data[0] * 10^missing_decimals * ext_call.return_data[0] / 10^(missing_decimals + 18),
                   ext_call.return_data[0] + (ext_call.return_data[0] * 10^missing_decimals * ext_call.return_data[0] / 10^(missing_decimals + 18))
        s = 10
        t = 1
        idx = missing_decimals + 18
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
        require ext_code.size(sub_fa242a22Address)
        staticcall sub_fa242a22Address.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] * 10^missing_decimals and ext_call.return_data[0] > -1 / ext_call.return_data[0] * 10^missing_decimals:
            revert with 'NH{q', 17
        if not s * t:
            revert with 'NH{q', 18
        if ext_call.return_data[0] > !(ext_call.return_data[0] * 10^missing_decimals * ext_call.return_data[0] / s * t):
            revert with 'NH{q', 17
        return ext_call.return_data[0], 
               ext_call.return_data[0],
               ext_call.return_data[0] * 10^missing_decimals,
               ext_call.return_data[0] * 10^missing_decimals * ext_call.return_data[0] / s * t,
               ext_call.return_data[0] + (ext_call.return_data[0] * 10^missing_decimals * ext_call.return_data[0] / s * t)
    s = 10
    t = 1
    idx = missing_decimals
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
    if 18 > !missing_decimals:
        revert with 'NH{q', 17
    if not missing_decimals + 18:
        require ext_code.size(sub_fa242a22Address)
        staticcall sub_fa242a22Address.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] * s * t and ext_call.return_data[0] > -1 / ext_call.return_data[0] * s * t:
            revert with 'NH{q', 17
        if ext_call.return_data[0] > !(ext_call.return_data[0] * s * t * ext_call.return_data[0]):
            revert with 'NH{q', 17
        return ext_call.return_data[0], 
               ext_call.return_data[0],
               ext_call.return_data[0] * s * t,
               ext_call.return_data[0] * s * t * ext_call.return_data[0],
               ext_call.return_data[0] + (ext_call.return_data[0] * s * t * ext_call.return_data[0])
    if bool(bool(missing_decimals + 18 < 78)) or bool(bool(missing_decimals + 18 < 32)):
        require ext_code.size(sub_fa242a22Address)
        staticcall sub_fa242a22Address.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] * s * t and ext_call.return_data[0] > -1 / ext_call.return_data[0] * s * t:
            revert with 'NH{q', 17
        if not 10^(missing_decimals + 18):
            revert with 'NH{q', 18
        if ext_call.return_data[0] > !(ext_call.return_data[0] * s * t * ext_call.return_data[0] / 10^(missing_decimals + 18)):
            revert with 'NH{q', 17
        return ext_call.return_data[0], 
               ext_call.return_data[0],
               ext_call.return_data[0] * s * t,
               ext_call.return_data[0] * s * t * ext_call.return_data[0] / 10^(missing_decimals + 18),
               ext_call.return_data[0] + (ext_call.return_data[0] * s * t * ext_call.return_data[0] / 10^(missing_decimals + 18))
    u = 10
    v = 1
    idx = missing_decimals + 18
    while idx > 1:
        if u > -1 / u:
            revert with 'NH{q', 17
        if not bool(idx):
            u = u * u
            v = v
            idx = uint255(idx) * 0.5
            continue 
        u = u * u
        v = u * v
        idx = uint255(idx) * 0.5
        continue 
    if v > -1 / u:
        revert with 'NH{q', 17
    require ext_code.size(sub_fa242a22Address)
    staticcall sub_fa242a22Address.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] * s * t and ext_call.return_data[0] > -1 / ext_call.return_data[0] * s * t:
        revert with 'NH{q', 17
    if not u * v:
        revert with 'NH{q', 18
    if ext_call.return_data[0] > !(ext_call.return_data[0] * s * t * ext_call.return_data[0] / u * v):
        revert with 'NH{q', 17
    return ext_call.return_data[0], 
           ext_call.return_data[0],
           ext_call.return_data[0] * s * t,
           ext_call.return_data[0] * s * t * ext_call.return_data[0] / u * v,
           ext_call.return_data[0] + (ext_call.return_data[0] * s * t * ext_call.return_data[0] / u * v)
}



}
