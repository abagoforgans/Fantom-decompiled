contract main {




// =====================  Runtime code  =====================


address owner;
address rarityAddress;
address sub_d486adccAddress;
array of uint256 sub_284b91bd;

function sub_284b91bd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_284b91bd.length
    return sub_284b91bd[arg1]
}

function owner() payable {
    return owner
}

function sub_d486adcc(?) payable {
    return sub_d486adccAddress
}

function rarity() payable {
    return rarityAddress
}

function _fallback() payable {
    revert
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

function sub_3d81b8fa(?) payable {
    idx = 0
    while idx < sub_284b91bd.length:
        mem[0] = 3
        mem[96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
        mem[100] = sub_284b91bd[idx]
        require ext_code.size(rarityAddress)
        call rarityAddress.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args sub_284b91bd[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_8649fe86(?) payable {
    idx = 0
    while idx < sub_284b91bd.length:
        require ext_code.size(rarityAddress)
        call rarityAddress.level_up(uint256 arg1) with:
             gas gas_remaining wei
            args sub_284b91bd[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= sub_284b91bd.length:
            revert with 'NH{q', 50
        mem[0] = 3
        mem[96] = 0x379607f500000000000000000000000000000000000000000000000000000000
        mem[100] = sub_284b91bd[idx]
        require ext_code.size(sub_d486adccAddress)
        call sub_d486adccAddress.claim(uint256 arg1) with:
             gas gas_remaining wei
            args sub_284b91bd[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
