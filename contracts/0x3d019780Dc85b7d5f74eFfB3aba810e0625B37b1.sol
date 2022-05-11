contract main {




// =====================  Runtime code  =====================


const name = 'DiceTower', 0


address stor0;
address sub_cdec5ef0Address;
array of struct sub_38517196;
mapping of uint256 stor3;
uint256 stor4;

function sub_38517196(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if arg2 >= sub_38517196[address(arg1)].field_0:
        revert with 'NH{q', 50
    return sub_38517196[address(arg1)][arg2].field_0
}

function sub_cdec5ef0(?) {
    return sub_cdec5ef0Address
}

function _fallback() payable {
    revert
}

function sub_0bafcfaf(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == stor0
    sub_cdec5ef0Address = address(arg1)
}

function sub_8f5fd21d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_38517196[address(arg1)].field_0:
        mem[128] = sub_38517196[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * sub_38517196[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = sub_38517196[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_38517196[address(arg1)].field_0, data=mem[128 len 32 * sub_38517196[address(arg1)].field_0])
    mem[(32 * sub_38517196[address(arg1)].field_0) + 128] = 32
    mem[(32 * sub_38517196[address(arg1)].field_0) + 160] = sub_38517196[address(arg1)].field_0
    mem[(32 * sub_38517196[address(arg1)].field_0) + 192 len 32 * sub_38517196[address(arg1)].field_0] = mem[128 len 32 * sub_38517196[address(arg1)].field_0]
    return memory
      from (32 * sub_38517196[address(arg1)].field_0) + 128
       len (96 * sub_38517196[address(arg1)].field_0) + 64
}

function sub_2389dae2(?) payable {
    require ext_code.size(sub_cdec5ef0Address)
    staticcall sub_cdec5ef0Address.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'allowance'
    require ext_code.size(sub_cdec5ef0Address)
    call sub_cdec5ef0Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'fail send'
    require ext_code.size(sub_cdec5ef0Address)
    call sub_cdec5ef0Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_cdec5ef0Address)
    staticcall sub_cdec5ef0Address.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'allowance'
    if sha3(block.timestamp, msg.sender, stor4) % 19 > -2:
        revert with 'NH{q', 17
    if stor4 == -1:
        revert with 'NH{q', 17
    stor4++
    sub_38517196[address(msg.sender)].field_0++
    sub_38517196[address(msg.sender)][sub_38517196[address(msg.sender)].field_0].field_0 = (sha3(block.timestamp, msg.sender, stor4) % 19) + 1
    if stor3[address(msg.sender)] == -1:
        revert with 'NH{q', 17
    stor3[address(msg.sender)]++
    emit Rolled(stor3[address(msg.sender)], (sha3(block.timestamp, msg.sender, stor4) % 19) + 1, msg.sender, 20);
    require ext_code.size(sub_cdec5ef0Address)
    call sub_cdec5ef0Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
