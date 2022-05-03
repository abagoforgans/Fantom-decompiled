contract main {




// =====================  Runtime code  =====================


#
#  - routeValue(bytes16 arg1, string arg2, bytes arg3, bytes32 arg4, bytes arg5, bytes arg6, bytes arg7, uint256 arg8)
#
address owner;
address balanceKeeperAddress;
address lpKeeperAddress;
uint256 gtonAddTopic;
uint256 gtonSubTopic;
uint256 lpAddTopic;
uint256 lpSubTopic;
mapping of uint8 stor7;

function lpAddTopic() payable {
    return lpAddTopic
}

function gtonSubTopic() payable {
    return gtonSubTopic
}

function lpKeeper() payable {
    return lpKeeperAddress
}

function gtonAddTopic() payable {
    return gtonAddTopic
}

function owner() payable {
    return owner
}

function canRoute(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[arg1])
}

function lpSubTopic() payable {
    return lpSubTopic
}

function balanceKeeper() payable {
    return balanceKeeperAddress
}

function _fallback() payable {
    revert
}

function setLPAddTopic(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    lpAddTopic = arg1
}

function setLPSubTopic(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    lpSubTopic = arg1
}

function setGTONAddTopic(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    gtonAddTopic = arg1
}

function setGTONSubTopic(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    gtonSubTopic = arg1
}

function setCanRoute(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor7[address(arg1)] = uint8(arg2)
    emit SetCanRoute(msg.sender, arg1, bool(stor7[address(arg1)]));
}



}
