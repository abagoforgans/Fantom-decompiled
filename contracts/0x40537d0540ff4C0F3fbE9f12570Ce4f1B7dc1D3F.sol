contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function computeAddress(bytes32 arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return address(sha3(0, this.address, arg1, arg2))
}

function computeAddress(bytes32 arg1, bytes32 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    return address(sha3(0, arg3, arg1, arg2))
}

function deploy(uint256 arg1, bytes32 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    if eth.balance(this.address) < arg1:
        revert with 0, 'FlavorFactoryFactory: insufficient balance'
    if not arg3.length:
        revert with 0, 'FlavorFactoryFactory: bytecode length is zero'
    create2 contract with ('param', 'arg1') wei
                    salt: arg2
                    code: arg3[all]
    if not address(create2.new_address):
        revert with 0, 'FlavorFactoryFactory: Failed on deploy'
    return address(create2.new_address)
}



}
