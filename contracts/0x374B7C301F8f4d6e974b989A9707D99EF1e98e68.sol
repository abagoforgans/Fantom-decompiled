contract main {




// =====================  Runtime code  =====================


mapping of address underlyingToCToken;
mapping of address cTokenToUnderlying;
mapping of address stor2;
address owner;
address sub_d4384dbeAddress;
address sub_8ed8ea7eAddress;
address sub_d8f06c26Address;
address sub_50d7d613Address;

function sub_50d7d613(?) payable {
    return sub_50d7d613Address
}

function owner() payable {
    return owner
}

function sub_8ed8ea7e(?) payable {
    return sub_8ed8ea7eAddress
}

function cTokenToUnderlying(address arg1) payable {
    require calldata.size - 4 >= 32
    return cTokenToUnderlying[arg1]
}

function sub_d4384dbe(?) payable {
    return sub_d4384dbeAddress
}

function underlyingToCToken(address arg1) payable {
    require calldata.size - 4 >= 32
    return underlyingToCToken[arg1]
}

function sub_d8f06c26(?) payable {
    return sub_d8f06c26Address
}

function _fallback() payable {
    revert
}

function sub_a5bc29c2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = stor2[arg1[all]]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}



}
