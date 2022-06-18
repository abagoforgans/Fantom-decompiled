contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_bc9fc4b4(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == bool(cd[36])
    require cd[68] == bool(cd[68])
    mem[100] = msg.sender
    mem[132] = this.address
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0xe985e9c5 with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'must approved this contract'
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _90 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_90] == mem[_90 + 12 len 20]
        if not mem[_90 + 12 len 20]:
            revert with 0, 'not zero address'
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _96 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_96] == mem[_96 + 12 len 20]
        if mem[_96 + 12 len 20] != msg.sender:
            revert with 0, 'must own the token'
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _102 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_102] == mem[_102 + 12 len 20]
        if mem[_102 + 12 len 20] == this.address:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventurers_log(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _107 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_107] == mem[_107]
            if block.timestamp <= mem[_107]:
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _118 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _120 = mem[_118]
                require mem[_118] == mem[_118]
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.xp(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _132 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _135 = mem[_132]
                require mem[_132] == mem[_132]
                mem[mem[64] + 4] = _120
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.xp_required(uint256 arg1) with:
                        gas gas_remaining wei
                       args _120
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _148 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_148] == mem[_148]
                if _135 < mem[_148]:
                    if bool(cd[36]) != 1:
                        if bool(cd[68]) == 1:
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _171 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _178 = mem[_171]
                            require mem[_171] == mem[_171]
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _218 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_218] == mem[_218]
                            if block.timestamp > _178:
                                if mem[_218] > 0:
                                    mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                    require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                    call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args cd[((32 * idx) + cd[4] + 36)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                        staticcall 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claimable(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _169 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_169] == mem[_169]
                        if mem[_169] <= 0:
                            if bool(cd[68]) == 1:
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _226 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _238 = mem[_226]
                                require mem[_226] == mem[_226]
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _303 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_303] == mem[_303]
                                if block.timestamp > _238:
                                    if mem[_303] > 0:
                                        mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args cd[((32 * idx) + cd[4] + 36)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[mem[64]] = 0x379607f500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + cd[4] + 36)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if bool(cd[68]) == 1:
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _263 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _277 = mem[_263]
                                require mem[_263] == mem[_263]
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _346 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_346] == mem[_346]
                                if block.timestamp > _277:
                                    if mem[_346] > 0:
                                        mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args cd[((32 * idx) + cd[4] + 36)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                         gas gas_remaining wei
                        args cd[((32 * idx) + cd[4] + 36)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if bool(cd[36]) != 1:
                        if bool(cd[68]) == 1:
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _191 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _201 = mem[_191]
                            require mem[_191] == mem[_191]
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _254 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_254] == mem[_254]
                            if block.timestamp > _201:
                                if mem[_254] > 0:
                                    mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                    require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                    call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args cd[((32 * idx) + cd[4] + 36)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                        staticcall 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claimable(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _189 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_189] == mem[_189]
                        if mem[_189] <= 0:
                            if bool(cd[68]) == 1:
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _264 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _278 = mem[_264]
                                require mem[_264] == mem[_264]
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _347 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_347] == mem[_347]
                                if block.timestamp > _278:
                                    if mem[_347] > 0:
                                        mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args cd[((32 * idx) + cd[4] + 36)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[mem[64]] = 0x379607f500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + cd[4] + 36)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if bool(cd[68]) == 1:
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _304 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _320 = mem[_304]
                                require mem[_304] == mem[_304]
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _385 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_385] == mem[_385]
                                if block.timestamp > _320:
                                    if mem[_385] > 0:
                                        mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args cd[((32 * idx) + cd[4] + 36)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _124 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _126 = mem[_124]
                require mem[_124] == mem[_124]
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.xp(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _140 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _143 = mem[_140]
                require mem[_140] == mem[_140]
                mem[mem[64] + 4] = _126
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.xp_required(uint256 arg1) with:
                        gas gas_remaining wei
                       args _126
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _156 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_156] == mem[_156]
                if _143 < mem[_156]:
                    if bool(cd[36]) != 1:
                        if bool(cd[68]) == 1:
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _192 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _202 = mem[_192]
                            require mem[_192] == mem[_192]
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _256 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_256] == mem[_256]
                            if block.timestamp > _202:
                                if mem[_256] > 0:
                                    mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                    require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                    call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args cd[((32 * idx) + cd[4] + 36)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                        staticcall 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claimable(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _190 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_190] == mem[_190]
                        if mem[_190] <= 0:
                            if bool(cd[68]) == 1:
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _265 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _279 = mem[_265]
                                require mem[_265] == mem[_265]
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _348 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_348] == mem[_348]
                                if block.timestamp > _279:
                                    if mem[_348] > 0:
                                        mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args cd[((32 * idx) + cd[4] + 36)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[mem[64]] = 0x379607f500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + cd[4] + 36)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if bool(cd[68]) == 1:
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _305 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _321 = mem[_305]
                                require mem[_305] == mem[_305]
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _386 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_386] == mem[_386]
                                if block.timestamp > _321:
                                    if mem[_386] > 0:
                                        mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args cd[((32 * idx) + cd[4] + 36)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                         gas gas_remaining wei
                        args cd[((32 * idx) + cd[4] + 36)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if bool(cd[36]) != 1:
                        if bool(cd[68]) == 1:
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _220 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _233 = mem[_220]
                            require mem[_220] == mem[_220]
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _295 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_295] == mem[_295]
                            if block.timestamp > _233:
                                if mem[_295] > 0:
                                    mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                    require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                    call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args cd[((32 * idx) + cd[4] + 36)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                        staticcall 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claimable(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _216 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_216] == mem[_216]
                        if mem[_216] <= 0:
                            if bool(cd[68]) == 1:
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _306 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _322 = mem[_306]
                                require mem[_306] == mem[_306]
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _387 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_387] == mem[_387]
                                if block.timestamp > _322:
                                    if mem[_387] > 0:
                                        mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args cd[((32 * idx) + cd[4] + 36)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[mem[64]] = 0x379607f500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + cd[4] + 36)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if bool(cd[68]) == 1:
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _349 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _362 = mem[_349]
                                require mem[_349] == mem[_349]
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _415 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_415] == mem[_415]
                                if block.timestamp > _362:
                                    if mem[_415] > 0:
                                        mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args cd[((32 * idx) + cd[4] + 36)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[mem[64] + 36] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventurers_log(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _114 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_114] == mem[_114]
            if block.timestamp <= mem[_114]:
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _129 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _133 = mem[_129]
                require mem[_129] == mem[_129]
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.xp(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _145 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _149 = mem[_145]
                require mem[_145] == mem[_145]
                mem[mem[64] + 4] = _133
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.xp_required(uint256 arg1) with:
                        gas gas_remaining wei
                       args _133
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _163 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_163] == mem[_163]
                if _149 < mem[_163]:
                    if bool(cd[36]) != 1:
                        if bool(cd[68]) == 1:
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _208 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _221 = mem[_208]
                            require mem[_208] == mem[_208]
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _281 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_281] == mem[_281]
                            if block.timestamp > _221:
                                if mem[_281] > 0:
                                    mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                    require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                    call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args cd[((32 * idx) + cd[4] + 36)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                        staticcall 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claimable(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _205 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_205] == mem[_205]
                        if mem[_205] <= 0:
                            if bool(cd[68]) == 1:
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _290 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _307 = mem[_290]
                                require mem[_290] == mem[_290]
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _370 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_370] == mem[_370]
                                if block.timestamp > _307:
                                    if mem[_370] > 0:
                                        mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args cd[((32 * idx) + cd[4] + 36)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[mem[64]] = 0x379607f500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + cd[4] + 36)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if bool(cd[68]) == 1:
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _330 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _350 = mem[_330]
                                require mem[_330] == mem[_330]
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _406 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_406] == mem[_406]
                                if block.timestamp > _350:
                                    if mem[_406] > 0:
                                        mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args cd[((32 * idx) + cd[4] + 36)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                         gas gas_remaining wei
                        args cd[((32 * idx) + cd[4] + 36)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if bool(cd[36]) != 1:
                        if bool(cd[68]) == 1:
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _241 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _259 = mem[_241]
                            require mem[_241] == mem[_241]
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _324 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_324] == mem[_324]
                            if block.timestamp > _259:
                                if mem[_324] > 0:
                                    mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                    require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                    call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args cd[((32 * idx) + cd[4] + 36)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                        staticcall 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claimable(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _239 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_239] == mem[_239]
                        if mem[_239] <= 0:
                            if bool(cd[68]) == 1:
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _331 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _351 = mem[_331]
                                require mem[_331] == mem[_331]
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _407 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_407] == mem[_407]
                                if block.timestamp > _351:
                                    if mem[_407] > 0:
                                        mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args cd[((32 * idx) + cd[4] + 36)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[mem[64]] = 0x379607f500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + cd[4] + 36)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if bool(cd[68]) == 1:
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _371 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _389 = mem[_371]
                                require mem[_371] == mem[_371]
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _432 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_432] == mem[_432]
                                if block.timestamp > _389:
                                    if mem[_432] > 0:
                                        mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args cd[((32 * idx) + cd[4] + 36)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _137 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _141 = mem[_137]
                require mem[_137] == mem[_137]
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.xp(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _153 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _157 = mem[_153]
                require mem[_153] == mem[_153]
                mem[mem[64] + 4] = _141
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.xp_required(uint256 arg1) with:
                        gas gas_remaining wei
                       args _141
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _179 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_179] == mem[_179]
                if _157 < mem[_179]:
                    if bool(cd[36]) != 1:
                        if bool(cd[68]) == 1:
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _242 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _260 = mem[_242]
                            require mem[_242] == mem[_242]
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _326 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_326] == mem[_326]
                            if block.timestamp > _260:
                                if mem[_326] > 0:
                                    mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                    require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                    call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args cd[((32 * idx) + cd[4] + 36)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                        staticcall 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claimable(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _240 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_240] == mem[_240]
                        if mem[_240] <= 0:
                            if bool(cd[68]) == 1:
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _332 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _352 = mem[_332]
                                require mem[_332] == mem[_332]
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _408 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_408] == mem[_408]
                                if block.timestamp > _352:
                                    if mem[_408] > 0:
                                        mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args cd[((32 * idx) + cd[4] + 36)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[mem[64]] = 0x379607f500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + cd[4] + 36)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if bool(cd[68]) == 1:
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _372 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _390 = mem[_372]
                                require mem[_372] == mem[_372]
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _433 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_433] == mem[_433]
                                if block.timestamp > _390:
                                    if mem[_433] > 0:
                                        mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args cd[((32 * idx) + cd[4] + 36)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
                         gas gas_remaining wei
                        args cd[((32 * idx) + cd[4] + 36)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if bool(cd[36]) != 1:
                        if bool(cd[68]) == 1:
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _283 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _301 = mem[_283]
                            require mem[_283] == mem[_283]
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                            staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _367 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_367] == mem[_367]
                            if block.timestamp > _301:
                                if mem[_367] > 0:
                                    mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                    require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                    call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args cd[((32 * idx) + cd[4] + 36)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                        staticcall 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claimable(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _280 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_280] == mem[_280]
                        if mem[_280] <= 0:
                            if bool(cd[68]) == 1:
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _373 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _391 = mem[_373]
                                require mem[_373] == mem[_373]
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _434 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_434] == mem[_434]
                                if block.timestamp > _391:
                                    if mem[_434] > 0:
                                        mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args cd[((32 * idx) + cd[4] + 36)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[mem[64]] = 0x379607f500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + cd[4] + 36)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if bool(cd[68]) == 1:
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _409 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _419 = mem[_409]
                                require mem[_409] == mem[_409]
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _448 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_448] == mem[_448]
                                if block.timestamp > _419:
                                    if mem[_448] > 0:
                                        mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                                        call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args cd[((32 * idx) + cd[4] + 36)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
