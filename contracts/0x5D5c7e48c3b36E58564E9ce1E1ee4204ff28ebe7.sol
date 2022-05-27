contract main {




// =====================  Runtime code  =====================


address owner;
array of address sub_b4989335;
array of address sub_d6fd5037;

function owner() payable {
    return owner
}

function sub_b4989335(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_b4989335.length
    return sub_b4989335[arg1]
}

function sub_d6fd5037(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_d6fd5037.length
    return sub_d6fd5037[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_dd526c11(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    create contract with 0 wei
                    code: code.data[1264 len 92]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_b4989335.length++
    sub_b4989335[sub_b4989335.length] = address(create.new_address)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_7d4ce20a(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    create contract with 0 wei
                    code: code.data[1115 len 149], arg1
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_d6fd5037.length++
    sub_d6fd5037[sub_d6fd5037.length] = address(create.new_address)
}



}
