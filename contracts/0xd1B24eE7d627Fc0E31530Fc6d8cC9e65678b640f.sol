contract main {




// =====================  Runtime code  =====================


mapping of address deployed;

function deployed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return deployed[arg1]
}

function _fallback() payable {
    revert
}

function sub_fc2c9395(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if deployed[msg.sender]:
        revert with 0, 'Address already deployed'
    create contract with 0 wei
                    code: code.data[431 len 6570], address(msg.sender), address(arg1)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    deployed[msg.sender] = address(create.new_address)
}



}
