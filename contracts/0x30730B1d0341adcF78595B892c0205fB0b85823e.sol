contract main {




// =====================  Runtime code  =====================


address owner;
array of struct markets;
address comptrollerAddress;
array of address stor80084422859880547211683076133703299733277748156566366325829078699459944778999;
array of struct stor80084422859880547211683076133703299733277748156566366325829078699459944779000;

function comptroller() payable {
    return comptrollerAddress
}

function owner() payable {
    return owner
}

function markets(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < markets.length
    return markets[arg1].field_0, markets[arg1].field_256, markets[arg1].field_512, bool(markets[arg1].field_672)
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

function enableMarket(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < markets.length
    markets[arg1].field_672 = 1
    emit 0x7971ab1d: arg1
}

function disableMarket(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < markets.length
    markets[arg1].field_672 = 0
    emit 0x470ba2ca: arg1
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

function sub_db7ccd63(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    idx = 0
    while idx < markets.length:
        mem[0] = 1
        if markets[idx].field_0 != address(arg1):
            idx = idx + 1
            continue 
        if markets[idx].field_256 != address(arg2):
            idx = idx + 1
            continue 
        return idx
    revert with 0, 'NO SUCH MARKET'
}

function sub_de1f4430(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    create contract with 0 wei
                    code: code.data[2192 len 1485], comptrollerAddress, address(arg1), address(arg2)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    markets.length++
    markets[markets.length].field_0 = address(arg1)
    storB10E[stor1.length] = address(arg2)
    storB10E[stor1.length].field_0 = address(create.new_address)
    storB10E[stor1.length].field_160 = 1
    return (markets.length - 1)
}



}
