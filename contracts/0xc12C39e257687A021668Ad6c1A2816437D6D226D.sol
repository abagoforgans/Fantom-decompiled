contract main {




// =====================  Runtime code  =====================


address owner;
address nebulaAddress;
address tokenAddress;
mapping of uint8 sub_0872512b;
mapping of struct sub_d99c2a72;
uint256 stor5;
uint256 stor6;
mapping of uint256 nextRq;
mapping of uint256 prevRq;
address initializerAddress;

function sub_0872512b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_0872512b[arg1] >= 3:
        revert with 'NH{q', 33
    return sub_0872512b[arg1]
}

function nextRq(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nextRq[arg1]
}

function nebula() payable {
    return nebulaAddress
}

function owner() payable {
    return owner
}

function initializer() payable {
    return initializerAddress
}

function tokenAddress() payable {
    return tokenAddress
}

function prevRq(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return prevRq[arg1]
}

function sub_d99c2a72(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_d99c2a72[arg1].field_512 >= 3:
        revert with 'NH{q', 33
    return sub_d99c2a72[arg1].field_0, sub_d99c2a72[arg1].field_256, sub_d99c2a72[arg1].field_512
}

function _fallback() payable {
    revert
}

function requestsQueue() payable {
    return stor5, stor6
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_d3f5d56e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if initializerAddress != msg.sender:
        revert with 0, 'access denied'
    if var57002 < 32:
        if var59001 >= arg1.length:
            revert with 'NH{q', 50
        # nil
    else:
        if var83002 >= 64:
            # nil
        else:
            if var85001 >= arg1.length:
                revert with 'NH{q', 50
            # nil
}

function sub_00b52395(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if initializerAddress != msg.sender:
        revert with 0, 'access denied'
    if var57002 < 32:
        if var59001 >= arg1.length:
            revert with 'NH{q', 50
        # nil
    else:
        sub_d99c2a72[0].field_0 = 0
        sub_d99c2a72[0].field_256 = 0
        sub_d99c2a72[0].field_512 = 0
        sub_0872512b[0] = 0
        require ext_code.size(0xb5e094aec0d8f019497bce712af685ac15bd8c35)
        delegate 0xb5e094aec0d8f019497bce712af685ac15bd8c35.0x9d6ad84b with:
             gas gas_remaining wei
            args 5, 0
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
}



}
