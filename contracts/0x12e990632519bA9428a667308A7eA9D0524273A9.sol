contract main {




// =====================  Runtime code  =====================


#
#  - routeValue(bytes16 arg1, string arg2, bytes arg3, bytes32 arg4, bytes arg5, bytes arg6, bytes arg7, uint256 arg8)
#
address owner;
uint256 relayTopic;
address walletAddress;
address gtonAddress;
mapping of uint8 stor6;

function relayTopic() payable {
    return relayTopic
}

function wallet() payable {
    return walletAddress
}

function owner() payable {
    return owner
}

function canRoute(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[arg1])
}

function gton() payable {
    return gtonAddress
}

function _fallback() payable {
    revert
}

function setRelayTopic(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'ACW'
    relayTopic = arg1
    emit SetRelayTopic(relayTopic, arg1);
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'ACW'
    owner = arg1
    emit SetOwner(owner, arg1);
}

function setWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'ACW'
    walletAddress = arg1
    emit SetWallet(walletAddress, arg1);
}

function setCanRoute(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'ACW'
    stor6[address(arg1)] = uint8(arg2)
    emit SetCanRoute(msg.sender, arg1, bool(uint8(arg2)));
}



}
