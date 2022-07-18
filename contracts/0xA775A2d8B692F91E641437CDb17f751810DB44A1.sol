contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_2499b1b5;
address sub_4c599d33Address;

function sub_2499b1b5(?) {
    return sub_2499b1b5
}

function sub_4c599d33(?) {
    return sub_4c599d33Address
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_84cb37ea(?) {
    require calldata.size - 4 >= 32
}

function sub_89885728(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_2499b1b5 = arg1
}

function transferOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    owner = arg1
}

function sub_6b60f1a0(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == owner
    sub_4c599d33Address = address(arg1)
}

function withdraw() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9caac016(?) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require ext_code.size(sub_4c599d33Address)
    call sub_4c599d33Address.0xa106d771 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_46feb24a(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_4c599d33Address)
    call sub_4c599d33Address.0x6352211e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Only owner of that tokenId can do that'
    require ext_code.size(sub_4c599d33Address)
    if sha3(block.difficulty, block.timestamp) % 100 > sub_2499b1b5:
        call sub_4c599d33Address.0x21742e2d with:
             gas gas_remaining wei
            args arg1, 0
    else:
        call sub_4c599d33Address.0x21742e2d with:
             gas gas_remaining wei
            args arg1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function leave(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_4c599d33Address)
    call sub_4c599d33Address.0x6352211e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Only owner of that tokenId can do that'
    require ext_code.size(sub_4c599d33Address)
    if sha3(block.difficulty, block.timestamp) % 100 > sub_2499b1b5:
        call sub_4c599d33Address._leave(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
    else:
        call sub_4c599d33Address.0x7ed75068 with:
             gas gas_remaining wei
            args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
