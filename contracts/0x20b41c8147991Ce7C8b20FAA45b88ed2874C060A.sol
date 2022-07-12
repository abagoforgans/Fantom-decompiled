contract main {




// =====================  Runtime code  =====================


mapping of uint256 stor0;
mapping of uint8 stor1;
address owner;

function getOwner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function getPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor0[address(arg1)]:
        revert with 0, 'PriceOracleProxy: unknown token'
    return stor0[address(arg1)], stor1[address(arg1)]
}

function setPrice(address arg1, uint256 arg2, uint8 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0xfe50726963654f7261636c6550726f78793a20616c6c6f77656420746f20746865206f776e6572206f6e6c,
                    mem[207 len 21]
    stor0[address(arg1)] = arg2
    stor1[address(arg1)] = arg3
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0xfe50726963654f7261636c6550726f78793a20616c6c6f77656420746f20746865206f776e6572206f6e6c,
                    mem[207 len 21]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x7950726963654f7261636c6550726f78793a207a65726f2061646472657373206e6f7420616c6c6f7765,
                    mem[206 len 22]
    owner = arg1
}



}
