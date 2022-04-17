contract main {




// =====================  Runtime code  =====================


address owner;
address sub_956974acAddress;
address balanceContractAddress;
array of address sub_15f90a60;
uint8 stor4;
uint8 stor4; offset 8
uint256 stor4; offset 8
uint256 stor4;

function sub_15f90a60(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_15f90a60.length
    return address(sub_15f90a60[arg1])
}

function balanceContract() payable {
    return balanceContractAddress
}

function canLock() payable {
    return bool(uint8(stor4.field_8))
}

function owner() payable {
    return owner
}

function sub_956974ac(?) payable {
    return sub_956974acAddress
}

function canUnlock() payable {
    return bool(uint8(stor4.field_0))
}

function _fallback() payable {
    revert
}

function toggleLock() payable {
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    Mask(248, 0, stor4.field_8) = Mask(248, 0, not bool(uint8(stor4.field_8)))
}

function sub_195a616a(?) payable {
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    uint256(stor4.field_0) = not bool(uint8(stor4.field_0)) or Mask(248, 8, uint256(stor4.field_0))
}

function sub_d0271d4a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    sub_956974acAddress = address(arg1)
}

function setBalanceContract(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    balanceContractAddress = arg1
}

function migrateGton(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(sub_956974acAddress)
    call sub_956974acAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'can't transfer'
}

function lockTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor4.field_8):
        revert with 0, 'can't lock'
    require ext_code.size(sub_956974acAddress)
    call sub_956974acAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'can't transfer'
    require ext_code.size(balanceContractAddress)
    call balanceContractAddress.0xca0b1878 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c7017eab(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    sub_15f90a60.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_15f90a60.length > idx:
            uint256(sub_15f90a60[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            address(sub_15f90a60[s]) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_15f90a60.length > idx:
            uint256(sub_15f90a60[idx]) = 0
            idx = idx + 1
            continue 
}

function sub_7fde4424(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if not uint8(stor4.field_0):
        revert with 0, 'can't unlock'
    mem[100] = msg.sender
    require ext_code.size(balanceContractAddress)
    call balanceContractAddress.userBalance(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 0, 'not enough money'
    mem[ceil32(return_data.size) + 100] = address(arg2)
    mem[ceil32(return_data.size) + 132] = arg1
    require ext_code.size(sub_956974acAddress)
    call sub_956974acAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'can't transfer tokens, probably not enough balance on port'
    mem[(2 * ceil32(return_data.size)) + 96] = 0xa58760aa00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 132] = arg1
    require ext_code.size(balanceContractAddress)
    call balanceContractAddress.0xa58760aa with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < sub_15f90a60.length:
        mem[0] = 3
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(balanceContractAddress)
        call balanceContractAddress.userBalance(address rg1) with:
             gas gas_remaining wei
            args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _27 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _28 = mem[_27]
        require mem[_27] == mem[_27]
        mem[mem[64]] = 0xbc35784b00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _28
        require ext_code.size(address(sub_15f90a60[idx]))
        call address(sub_15f90a60[idx]).0xbc35784b with:
             gas gas_remaining wei
            args msg.sender, _28
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
