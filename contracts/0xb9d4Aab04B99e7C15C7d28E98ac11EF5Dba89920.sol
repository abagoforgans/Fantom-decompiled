contract main {




// =====================  Runtime code  =====================


uint256 count;
uint256 sub_68f6559c;
mapping of uint8 stor2;
address owner;

function count() payable {
    return count
}

function sub_1a27d40d(?) payable {
    return sub_68f6559c
}

function sub_68f6559c(?) payable {
    return sub_68f6559c
}

function owner() payable {
    return owner
}

function getCount() payable {
    return count
}

function blacklist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function _fallback() payable {
    revert
}

function sub_24a8f144(?) payable {
    if not sub_68f6559c:
        revert with 'NH{q', 17
    sub_68f6559c--
}

function sub_b21cacb3(?) payable {
    require not stor2[address(msg.sender)]
    if sub_68f6559c == -1:
        revert with 'NH{q', 17
    sub_68f6559c++
}

function addToBlacklist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    stor2[address(arg1)] = 1
}

function removeFromBlacklist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    stor2[address(arg1)] = 0
}

function sub_cc95d5aa(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    if count > -arg1 - 1:
        revert with 'NH{q', 17
    count += arg1
}



}
