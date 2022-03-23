contract main {




// =====================  Runtime code  =====================


uint256 sub_125d088b;
address owner;
mapping of uint8 stor2;
mapping of struct prices;

function sub_125d088b(?) payable {
    return sub_125d088b
}

function getPrice(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if not prices[arg1].field_256:
        revert with 0, 'price for symbol not available'
    if block.timestamp >= prices[arg1].field_256 + sub_125d088b:
        revert with 0, 'price expired'
    return prices[arg1].field_0
}

function prices(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return prices[arg1].field_0, prices[arg1].field_256
}

function owner() payable {
    return owner
}

function sub_b750bdde(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function _fallback() payable {
    revert
}

function sub_2a142b0b(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'only owner can add source'
    stor2[address(arg1)] = 1
}

function sub_b98ffeb1(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'only owner can drop source'
    stor2[address(arg1)] = 0
}

function sub_8ef314c6(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'only owner can change expiry'
    sub_125d088b = arg1
    emit 0x17f1771b: arg1
}

function setPrice(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor2[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe6f6e6c7920617574686f72697a656420736f757263652063616e20707573682070726963,
                    mem[201 len 27]
    prices[arg1].field_0 = arg2
    prices[arg1].field_256 = block.timestamp
    emit 0x6007aeee: arg2, arg1
}



}
