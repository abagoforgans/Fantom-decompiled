contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_f723a543(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xa0a8ab2f: msg.sender, arg1
}

function summon(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summon(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x61d2697b: msg.sender, arg1
}

function sub_e0dcffc9(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventurers_log(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] < block.timestamp)
}

function sub_d08d913b(?) payable {
    require calldata.size - 4 >= 96
    emit 0x1f27d985: arg1, arg2, arg3
    require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
    call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) payable {
    require calldata.size - 4 >= 224
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
    call 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.0xc3c2407c with:
         gas gas_remaining wei
        args 0, uint32(arg1), arg2 << 224, arg3 << 224, arg4, arg5 << 224, arg6 << 224, arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x23b59339: msg.sender, arg1
}

function sub_337feecf(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
    call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.0xb00b52f1 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x7c1f68c5: msg.sender, arg1
}

function adventure(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventurers_log(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= block.timestamp:
        revert with 0, 'Not ready'
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0xb00b52f1 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x9969cf26: msg.sender, arg1
}

function level_up(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summoner(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.xp_required(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'XP not enpugh'
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x90249448 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xfa3303c7: msg.sender, arg1
}



}
