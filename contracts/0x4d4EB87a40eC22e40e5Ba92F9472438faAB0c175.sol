contract main {




// =====================  Runtime code  =====================


address owner;
uint256 retrieve;

function retrieve() payable {
    return retrieve
}

function getOwner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function store(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    retrieve = arg1
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    emit OwnerSet(owner, arg1);
    owner = arg1
}



}
