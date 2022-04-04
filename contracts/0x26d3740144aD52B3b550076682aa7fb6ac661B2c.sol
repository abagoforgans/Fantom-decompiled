contract main {




// =====================  Runtime code  =====================


#
#  - sub_fe180cd9(?)
#
function _fallback() payable {
    revert
}

function getAddress(bytes arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    return address(sha3(0, this.address, arg2, sha3(arg1[all])))
}

function deploy(bytes arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    create2 contract with callvalue wei
                    salt: arg2
                    code: arg1[all]
    require ext_code.size(create2.new_address)
    emit Deployed(address(create2.new_address), arg2);
}



}
