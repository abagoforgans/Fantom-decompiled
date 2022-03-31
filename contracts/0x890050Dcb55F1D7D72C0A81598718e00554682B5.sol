contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct sub_fcc652db;

function owner() payable {
    return owner
}

function sub_f4c3eb2e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(sub_fcc652db[address(arg1)].field_416)
}

function sub_fcc652db(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_fcc652db[address(arg1)].field_0, sub_fcc652db[address(arg1)].field_256
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
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_b731b33b(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_fcc652db[address(arg1)].field_0 = address(arg2)
    sub_fcc652db[address(arg1)].field_256 = address(arg3)
    sub_fcc652db[address(arg1)].field_416 = 1
}



}
