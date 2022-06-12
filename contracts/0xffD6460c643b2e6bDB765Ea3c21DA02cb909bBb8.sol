contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_0d013619;
mapping of struct sub_c9e0e941;
array of uint256 sub_5777b7f2;

function sub_0d013619(?) payable {
    return sub_0d013619
}

function sub_5777b7f2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 5
    return sub_5777b7f2[arg1]
}

function sub_6f81b13e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if 1 > uint8(arg1):
        revert with 0, 'Factions: bad index'
    if uint8(arg1) > 5:
        revert with 0, 'Factions: bad index'
    if uint8(arg1) < 1:
        revert with 'NH{q', 17
    if uint8(uint8(arg1) - 1) >= 5:
        revert with 'NH{q', 50
    return sub_5777b7f2[uint8(uint8(arg1) - 1)]
}

function owner() payable {
    return owner
}

function sub_9a6b2087(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_c9e0e941[arg1].field_0, sub_c9e0e941[arg1].field_256
}

function sub_c9e0e941(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_c9e0e941[arg1].field_0, sub_c9e0e941[arg1].field_256
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Factions: owner'
    owner = arg1
}

function sub_25b16af0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Factions: owner'
    sub_0d013619 = arg1
}

function sub_4f15ce37(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 == 1:
        return 'The Harpers', 0
    if arg1 != 2:
        if arg1 == 3:
            return 'The Emeral Enclave', 0
        if arg1 == 4:
            return 'The Loard's Alliance', 0
        if arg1 != 5:
            return 'None', 0
    return 'The Order of the Gauntlet', 0
}

function sub_330ab39a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == uint8(arg2)
    if 1 > uint8(arg2):
        revert with 0, 'Factions: bad index'
    if uint8(arg2) > 5:
        revert with 0, 'Factions: bad index'
    require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
    staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.character_created(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Factions: character not created'
    if sub_c9e0e941[arg1].field_256 > -sub_0d013619 - 1:
        revert with 'NH{q', 17
    if sub_c9e0e941[arg1].field_256 + sub_0d013619 >= block.timestamp:
        revert with 0, 'Factions: changing too fast'
    if sub_c9e0e941[arg1].field_0:
        if sub_c9e0e941[arg1].field_0 < 1:
            revert with 'NH{q', 17
        if uint8(sub_c9e0e941[arg1].field_0 - 1) >= 5:
            revert with 'NH{q', 50
        if not sub_5777b7f2[uint8(stor2[arg1].field_0 - 1)]:
            revert with 'NH{q', 17
        sub_5777b7f2[uint8(stor2[arg1].field_0 - 1)]--
    sub_c9e0e941[arg1].field_0 = uint8(arg2)
    sub_c9e0e941[arg1].field_256 = block.timestamp
    if uint8(arg2) < 1:
        revert with 'NH{q', 17
    if uint8(uint8(arg2) - 1) >= 5:
        revert with 'NH{q', 50
    if sub_5777b7f2[uint8(uint8(arg2) - 1)] == -1:
        revert with 'NH{q', 17
    sub_5777b7f2[uint8(uint8(arg2) - 1)]++
}



}
