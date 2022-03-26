contract main {




// =====================  Runtime code  =====================


address owner;
array of address tokenContract;

function tokenContractAddresses(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < tokenContract.length
    return tokenContract[arg1]
}

function sub_38f718ab(?) payable {
    return tokenContract.length
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function sub_026bdf30(?) payable {
    require calldata.size - 4 >= 64
    create contract with 0 wei
                    code: code.data[828 len 6209], arg1, msg.sender, arg2
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    tokenContract.length++
    tokenContract[tokenContract.length] = address(create.new_address)
    emit 0x559f5dc9: arg1, arg2
    return address(create.new_address)
}



}
