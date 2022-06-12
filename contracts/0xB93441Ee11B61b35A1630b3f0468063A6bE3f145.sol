contract main {




// =====================  Runtime code  =====================


mapping of struct sub_e7a789f8;
mapping of uint256 adventurers_log;
mapping of uint8 stor2;

function sub_e7a789f8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_e7a789f8[arg1].field_0, sub_e7a789f8[arg1].field_256
}

function adventurers_log(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return adventurers_log[arg1]
}

function sub_f7415be6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function _fallback() payable {
    revert
}

function sub_7ec0c82d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'You are not the owner / approved to use this summoner'
    if stor2[arg1]:
        revert with 0, 'This summoner has already joined the world map'
    if sha3(arg1) % 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f < 0x8147ae147ae147ae147ae147ae147ae147ae147ae147ae147ae147ae147ae147:
        revert with 'NH{q', 17
    sub_e7a789f8[arg1].field_0 = (sha3(arg1) % 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f) - 0x147ae147ae147ae147ae147ae147ae147ae147ae147ae147ae147ae147ae147
    if sha3(sha3(arg1)) % 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f < 0x8147ae147ae147ae147ae147ae147ae147ae147ae147ae147ae147ae147ae147:
        revert with 'NH{q', 17
    sub_e7a789f8[arg1].field_256 = (sha3(sha3(arg1)) % 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f) - 0x147ae147ae147ae147ae147ae147ae147ae147ae147ae147ae147ae147ae147
    adventurers_log[arg1] = block.timestamp
    stor2[arg1] = 1
    emit 0x17990012: arg1
}

function sub_6e6ef6cf(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'You are not the owner / approved to use this summoner'
    if block.timestamp <= adventurers_log[arg1]:
        revert with 0, 'Your summoner needs to rest a day between each move'
    if not stor2[arg1]:
        revert with 0, 'You must fisrt spawn on the world map !'
    if arg2 >= 0 and sub_e7a789f8[arg1].field_0 < arg2 - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    if arg2 < 0 and sub_e7a789f8[arg1].field_0 > arg2 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if sub_e7a789f8[arg1].field_0 - arg2 >= 0:
        if sub_e7a789f8[arg1].field_0 - arg2 > 0x2ecfb9c869536202ecfb9c869536202ecfb9c869536202ecfb9c869536202e:
            revert with 0, 'You can't go so far away in one move !'
    else:
        if bool(sub_e7a789f8[arg1].field_0 - arg2 > 0) and -1 < 0x8000000000000000000000000000000000000000000000000000000000000000 / sub_e7a789f8[arg1].field_0 - arg2:
            revert with 'NH{q', 17
        if bool(sub_e7a789f8[arg1].field_0 - arg2 < 0) and sub_e7a789f8[arg1].field_0 - arg2 < 0x8000000000000000000000000000000000000000000000000000000000000001:
            revert with 'NH{q', 17
        if -sub_e7a789f8[arg1].field_0 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * arg2) > 0x2ecfb9c869536202ecfb9c869536202ecfb9c869536202ecfb9c869536202e:
            revert with 0, 'You can't go so far away in one move !'
    if arg3 >= 0 and sub_e7a789f8[arg1].field_256 < arg3 - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    if arg3 < 0 and sub_e7a789f8[arg1].field_256 > arg3 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if sub_e7a789f8[arg1].field_256 - arg3 >= 0:
        if sub_e7a789f8[arg1].field_256 - arg3 > 0x2ecfb9c869536202ecfb9c869536202ecfb9c869536202ecfb9c869536202e:
            revert with 0, 'You can't go so far away in one move !'
    else:
        if bool(sub_e7a789f8[arg1].field_256 - arg3 > 0) and -1 < 0x8000000000000000000000000000000000000000000000000000000000000000 / sub_e7a789f8[arg1].field_256 - arg3:
            revert with 'NH{q', 17
        if bool(sub_e7a789f8[arg1].field_256 - arg3 < 0) and sub_e7a789f8[arg1].field_256 - arg3 < 0x8000000000000000000000000000000000000000000000000000000000000001:
            revert with 'NH{q', 17
        if -sub_e7a789f8[arg1].field_256 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * arg3) > 0x2ecfb9c869536202ecfb9c869536202ecfb9c869536202ecfb9c869536202e:
            revert with 0, 'You can't go so far away in one move !'
    if block.timestamp > -86401:
        revert with 'NH{q', 17
    adventurers_log[arg1] = block.timestamp + (24 * 3600)
    sub_e7a789f8[arg1].field_0 = arg2
    sub_e7a789f8[arg1].field_256 = arg3
    emit 0x136b3e98: arg1, arg2, arg3
}



}
