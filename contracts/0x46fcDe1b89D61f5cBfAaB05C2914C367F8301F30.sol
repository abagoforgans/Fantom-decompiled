contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function deployCollateral(address arg1) payable {
    require calldata.size - 4 >= 32
    create2 contract with 0 wei
                    salt: sha3(msg.sender, arg1)
                    code: code.data[281 len 11916]
    return address(create2.new_address)
}



}
