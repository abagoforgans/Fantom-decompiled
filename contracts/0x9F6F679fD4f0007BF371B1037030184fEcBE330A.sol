contract main {




// =====================  Runtime code  =====================


mapping of uint256 wards;

function wards(address arg1) {
    require calldata.size - 4 >= 32
    return wards[arg1]
}

function _fallback() payable {
    revert
}

function add(address arg1) {
    require calldata.size - 4 >= 32
    require wards[address(msg.sender)] == 1
    wards[address(arg1)] = 1
}

function remove(address arg1) {
    require calldata.size - 4 >= 32
    require wards[address(msg.sender)] == 1
    wards[address(arg1)] = 0
}

function sub_a3d6bde9(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require wards[address(msg.sender)] == 1
    delegate arg1 with:
         gas gas_remaining wei
        args arg2[all]
    require not delegate.return_code != 1
}

function sub_95e00052(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require wards[address(msg.sender)] == 1
    delegate arg1 with:
         gas gas_remaining wei
        args arg2[all]
    if not delegate.return_code == 1:
        revert with ext_call.return_data[0 len return_data.size]
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}



}
