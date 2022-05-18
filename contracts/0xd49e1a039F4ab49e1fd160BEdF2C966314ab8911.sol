contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
array of address sub_a4675be0;

function owner() payable {
    return owner
}

function sub_a4675be0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_a4675be0.length
    return sub_a4675be0[arg1]
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

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[14463 len 38], mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_35fbe024(?) payable {
    require calldata.size - 4 >= 416
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    create contract with 0 wei
                    code: code.data[1375 len 13088], address(arg1), address(arg2), arg3, arg4, address(arg5), arg6, address(arg7), address(arg8), address(arg9), address(arg10), address(arg11), address(arg12), arg13
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_a4675be0.length++
    sub_a4675be0[sub_a4675be0.length] = address(create.new_address)
    stor1 = 1
}



}
