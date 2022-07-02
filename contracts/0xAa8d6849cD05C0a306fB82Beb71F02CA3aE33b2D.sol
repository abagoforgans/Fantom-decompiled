contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_8b61af1b;
mapping of uint8 stor2;

function sub_8b61af1b(?) {
    return sub_8b61af1b
}

function owner() {
    return owner
}

function executors(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function sub_b91849e5(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'caller is not the owner'
    stor2[address(arg1)] = uint8(bool(arg2))
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'caller is not the owner'
    if not arg1:
        revert with 0, 'new owner is the zero address'
    owner = arg1
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c7cfe80c(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if owner != msg.sender:
        if not stor2[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'caller is not the owner or executor'
    require ext_code.size(address(arg1))
    call address(arg1).transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args sub_8b61af1b, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function _fallback() payable {
    if owner != msg.sender:
        return memory
          from 128
           len mem[96]
    require 20 <= calldata.size
    require calldata.size <= calldata.size
    call address(call.func_hash) >> 96 with:
       value msg.value wei
         gas gas_remaining wei
        args call.data[20 len calldata.size - 20]
    if not return_data.size:
        if not ext_call.success:
            revert with 0x6c6f772d6c6576656c2063616c6c206661696c6564
        return 0x6c6f772d6c6576656c2063616c6c206661696c6564
    if ext_call.success:
        return ext_call.return_data[0 len return_data.size]
    if return_data.size:
        revert with ext_call.return_data[0 len return_data.size]
    revert with 0, 'low-level ', 0
}



}
