contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function summon(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
}

function level_up(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
}

function adventure(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
}

function summoner(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return 0
}

function classes(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return ' '
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return ' '
}

function xp_required(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return 0
}

function spend_xp(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
}

function sub_5dcc85c8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor0)
    call stor0.0xb00b52f1 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
