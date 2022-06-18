contract main {




// =====================  Runtime code  =====================


address sub_b2d946bcAddress;

function sub_b2d946bc(?) payable {
    return sub_b2d946bcAddress
}

function _fallback() payable {
    revert
}

function summon(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_b2d946bcAddress)
    call sub_b2d946bcAddress.summon(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x61d2697b: msg.sender, arg1
}

function sub_e0dcffc9(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_b2d946bcAddress)
    staticcall sub_b2d946bcAddress.adventurers_log(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] < block.timestamp)
}

function adventure(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_b2d946bcAddress)
    staticcall sub_b2d946bcAddress.adventurers_log(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= block.timestamp:
        revert with 0, 'Not ready'
    require ext_code.size(sub_b2d946bcAddress)
    call sub_b2d946bcAddress.0xb00b52f1 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x9969cf26: msg.sender, arg1
}

function level_up(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_b2d946bcAddress)
    staticcall sub_b2d946bcAddress.summoner(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(sub_b2d946bcAddress)
    staticcall sub_b2d946bcAddress.xp_required(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'XP not enpugh'
    require ext_code.size(sub_b2d946bcAddress)
    call sub_b2d946bcAddress.0x90249448 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xfa3303c7: msg.sender, arg1
}



}
