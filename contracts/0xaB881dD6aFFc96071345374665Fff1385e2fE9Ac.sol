contract main {




// =====================  Runtime code  =====================


const getChainId = chainid

const getGasPrice = block.gasprice

const sub_cb618d63(?) = chainid != 250

const getCoinbase = address(block.coinbase)


address owner;
mapping of uint8 stor1;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function sub_9d7bd300(?) payable {
    if chainid != 250:
        return chainid != 250
    return block.gasprice <= 1
}

function queryFee(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    return 0
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

function setWhitelist(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 1
        stor1[address(cd[((32 * idx) + arg1 + 36)])] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function getTrueAmount(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if chainid != 250:
        return arg3
    if stor1[address(arg1)]:
        return arg3
    if ext_code.size(tx.origin):
        if 250 == chainid:
            if block.gasprice > 1:
                if not ext_code.size(tx.origin):
                    return arg3
    else:
        if 250 == chainid:
            if block.gasprice > 1:
                if not ext_code.size(arg2):
                    return arg3
    if arg3 > 0x1999999999999999999999999999999999999999999999999999999999999999:
        revert with 0, 17
    return (10 * arg3 / 100)
}



}
