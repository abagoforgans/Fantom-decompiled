contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function deployBorrowable(address arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    create2 contract with 0 wei
                    salt: sha3(Mask(160, 96, msg.sender) >> 96, arg1, arg2)
                    code: code.data[287 len 14020]
    return address(create2.new_address)
}



}
