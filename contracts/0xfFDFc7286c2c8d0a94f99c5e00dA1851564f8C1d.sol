contract main {




// =====================  Runtime code  =====================


const isStrictOnSummonerClass = 1


address owner;
mapping of struct stor1;
mapping of uint256 stor2;
mapping of uint8 stor3;

function owner() payable {
    return owner
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

function trustImplementation(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = 1
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

function sub_c55b02f4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2[arg1]:
        return stor2[arg1]
    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0xc55b02f4 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_5d98f434(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_2abb5c03(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x2abb5c03 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[32]
    if stor1[arg1].field_0 == 57005:
        return 0
    if stor1[arg1].field_0:
        return stor1[arg1].field_0, stor1[arg1].field_256
    return ext_call.return_data[0] << 192, ext_call.return_data[32]
}

function trustedAssignSkinToSummoner(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(msg.sender)
    call msg.sender.0xb8dbacf9 with:
         gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0]:
            require ext_code.size(msg.sender)
            call msg.sender.class(uint256 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.class(uint256 arg1) with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'Summoner and skin must be of the same class'
        if not stor3[address(msg.sender)]:
            revert with 0, 'Only trusted ERC721 implementations can access this way of assignation'
        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                gas gas_remaining wei
               args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
        stor1[stor2[ext_call.return_data[0]]].field_16 = 0
        stor1[stor2[ext_call.return_data[0]]].field_256 = 0
        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                gas gas_remaining wei
               args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        stor2[ext_call.return_data[0]] = arg2
        stor1[arg2].field_0 = msg.sender
        stor1[arg2].field_256 = arg1
        emit 0x91dd75ea: msg.sender << 192, arg1, arg2
    else:
        if return_data.size <= 3:
            if not return_data.size:
                if not stor3[address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Only trusted ERC721 implementations can access this way of assignation'
            else:
                if not stor3[address(msg.sender)]:
                    revert with 0, 'Only trusted ERC721 implementations can access this way of assignation'
            ('bool', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor3', 3))))
            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                    gas gas_remaining wei
                   args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                    gas gas_remaining wei
                   args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            stor2[ext_call.return_data[0]] = arg2
            stor1[arg2].field_0 = msg.sender
            stor1[arg2].field_256 = arg1
            emit 0x91dd75ea: msg.sender << 192, arg1, arg2
        else:
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                if uint32(mem[4 len 28]) >> 224 != Panic(uint256 arg1):
                    if not return_data.size:
                        if not stor3[address(msg.sender)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        'Only trusted ERC721 implementations can access this way of assignation'
                    else:
                        if not stor3[address(msg.sender)]:
                            revert with 0, 'Only trusted ERC721 implementations can access this way of assignation'
                else:
                    if return_data.size > 35:
                        if not stor3[address(msg.sender)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        'Only trusted ERC721 implementations can access this way of assignation'
                    else:
                        if not return_data.size:
                            if not stor3[address(msg.sender)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            'Only trusted ERC721 implementations can access this way of assignation'
                        else:
                            if not stor3[address(msg.sender)]:
                                revert with 0, 'Only trusted ERC721 implementations can access this way of assignation'
                ('bool', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor3', 3))))
                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                        gas gas_remaining wei
                       args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                        gas gas_remaining wei
                       args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                stor2[ext_call.return_data[0]] = arg2
                stor1[arg2].field_0 = msg.sender
                stor1[arg2].field_256 = arg1
                emit 0x91dd75ea: msg.sender << 192, arg1, arg2
            else:
                if return_data.size < 68:
                    if not return_data.size:
                        if not stor3[address(msg.sender)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        'Only trusted ERC721 implementations can access this way of assignation'
                    else:
                        if not stor3[address(msg.sender)]:
                            revert with 0, 'Only trusted ERC721 implementations can access this way of assignation'
                    ('bool', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor3', 3))))
                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    stor2[ext_call.return_data[0]] = arg2
                    stor1[arg2].field_0 = msg.sender
                    stor1[arg2].field_256 = arg1
                    emit 0x91dd75ea: msg.sender << 192, arg1, arg2
                else:
                    mem[96 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        if not return_data.size:
                            if not stor3[address(msg.sender)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            'Only trusted ERC721 implementations can access this way of assignation'
                        else:
                            if not stor3[address(msg.sender)]:
                                revert with 0, 'Only trusted ERC721 implementations can access this way of assignation'
                        ('bool', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor3', 3))))
                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                gas gas_remaining wei
                               args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                        stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                        stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                gas gas_remaining wei
                               args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        stor2[ext_call.return_data[0]] = arg2
                        stor1[arg2].field_0 = msg.sender
                        stor1[arg2].field_256 = arg1
                        emit 0x91dd75ea: msg.sender << 192, arg1, arg2
                    else:
                        if mem[ext_call.return_data[0] + 96] > test266151307():
                            if not return_data.size:
                                if not stor3[address(msg.sender)]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                'Only trusted ERC721 implementations can access this way of assignation'
                            else:
                                if not stor3[address(msg.sender)]:
                                    revert with 0, 'Only trusted ERC721 implementations can access this way of assignation'
                            ('bool', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor3', 3))))
                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                    gas gas_remaining wei
                                   args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                    gas gas_remaining wei
                                   args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            stor2[ext_call.return_data[0]] = arg2
                            stor1[arg2].field_0 = msg.sender
                            stor1[arg2].field_256 = arg1
                            emit 0x91dd75ea: msg.sender << 192, arg1, arg2
                        else:
                            if ext_call.return_data[0] + mem[ext_call.return_data[0] + 96] + 32 > return_data.size - 4:
                                if not return_data.size:
                                    if not stor3[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    'Only trusted ERC721 implementations can access this way of assignation'
                                else:
                                    if not stor3[address(msg.sender)]:
                                        revert with 0, 'Only trusted ERC721 implementations can access this way of assignation'
                                ('bool', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor3', 3))))
                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                        gas gas_remaining wei
                                       args msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                        gas gas_remaining wei
                                       args msg.sender, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                stor2[ext_call.return_data[0]] = arg2
                                stor1[arg2].field_0 = msg.sender
                                stor1[arg2].field_256 = arg1
                                emit 0x91dd75ea: msg.sender << 192, arg1, arg2
                            else:
                                if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 96] + 31) + 97 > test266151307() or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 96] + 31) + 97 < 96:
                                    revert with 'NH{q', 65
                                mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 96] + 31) + 97
                                if ext_call.return_data[0] + 96:
                                    mem[0] = msg.sender
                                    mem[32] = 3
                                    if not stor3[address(msg.sender)]:
                                        _127 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 96] + 31) + 97
                                        mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 96] + 31) + 97] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 70
                                        mem[_127 + 68] = 'Only trusted ERC721 implementati'
                                        mem[_127 + 100] = 'ons can access this way of assig'
                                        mem[_127 + 132] = 'nation'
                                        revert with memory
                                          from mem[64]
                                           len _127 + -mem[64] + 164
                                    _133 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 96] + 31) + 97
                                    mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 96] + 31) + 161
                                    mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 96] + 31) + 97] = 57005
                                    mem[_133 + 32] = 0
                                    _134 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_134] = msg.sender
                                    mem[_134 + 32] = arg1
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = arg1
                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                            gas gas_remaining wei
                                           args msg.sender, arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _250 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_250] == mem[_250]
                                    mem[0] = mem[_250]
                                    mem[0] = stor2[mem[0]]
                                    mem[32] = 1
                                    stor1[mem[0]].field_0 = 57005
                                    stor1[mem[0]].field_16 = 0
                                    stor1[mem[0]].field_256 = 0
                                    _358 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_358] = msg.sender
                                    mem[_358 + 32] = arg1
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = arg1
                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                            gas gas_remaining wei
                                           args msg.sender, arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _474 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_474] == mem[_474]
                                    mem[0] = mem[_474]
                                else:
                                    if not return_data.size:
                                        mem[0] = msg.sender
                                        mem[32] = 3
                                        if not stor3[address(msg.sender)]:
                                            _152 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 96] + 31) + 97
                                            mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 96] + 31) + 97] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 70
                                            mem[_152 + 68] = 'Only trusted ERC721 implementati'
                                            mem[_152 + 100] = 'ons can access this way of assig'
                                            mem[_152 + 132] = 'nation'
                                            revert with memory
                                              from mem[64]
                                               len _152 + -mem[64] + 164
                                        _154 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 96] + 31) + 97
                                        mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 96] + 31) + 161
                                        mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 96] + 31) + 97] = 57005
                                        mem[_154 + 32] = 0
                                        _155 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_155] = msg.sender
                                        mem[_155 + 32] = arg1
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = arg1
                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                gas gas_remaining wei
                                               args msg.sender, arg1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _287 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_287] == mem[_287]
                                        mem[0] = mem[_287]
                                        mem[0] = stor2[mem[0]]
                                        mem[32] = 1
                                        stor1[mem[0]].field_0 = 57005
                                        stor1[mem[0]].field_16 = 0
                                        stor1[mem[0]].field_256 = 0
                                        _380 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_380] = msg.sender
                                        mem[_380 + 32] = arg1
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = arg1
                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                gas gas_remaining wei
                                               args msg.sender, arg1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _516 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_516] == mem[_516]
                                        mem[0] = mem[_516]
                                    else:
                                        _136 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 96] + 31) + 97
                                        mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 96] + 31) + ceil32(return_data.size) + 98
                                        mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 96] + 31) + 97] = return_data.size
                                        mem[_136 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[0] = msg.sender
                                        mem[32] = 3
                                        if not stor3[address(msg.sender)]:
                                            revert with 0, 'Only trusted ERC721 implementations can access this way of assignation'
                                        _157 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_157] = 57005
                                        mem[_157 + 32] = 0
                                        _158 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_158] = msg.sender
                                        mem[_158 + 32] = arg1
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = arg1
                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                gas gas_remaining wei
                                               args msg.sender, arg1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _288 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_288] == mem[_288]
                                        mem[0] = mem[_288]
                                        mem[0] = stor2[mem[0]]
                                        mem[32] = 1
                                        stor1[mem[0]].field_0 = 57005
                                        stor1[mem[0]].field_16 = 0
                                        stor1[mem[0]].field_256 = 0
                                        _386 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_386] = msg.sender
                                        mem[_386 + 32] = arg1
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = arg1
                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                gas gas_remaining wei
                                               args msg.sender, arg1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _517 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_517] == mem[_517]
                                        mem[0] = mem[_517]
                                stor2[mem[0]] = arg2
                                stor1[arg2].field_0 = msg.sender
                                stor1[arg2].field_256 = arg1
                                emit 0x91dd75ea: msg.sender, arg1, arg2
}

function assignSkinToSummoner(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg1)
    call arg1.0xb8dbacf9 with:
         gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        if return_data.size <= 3:
            if not return_data.size:
                require ext_code.size(arg1)
                staticcall arg1.ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if msg.sender == ext_call.return_data[12 len 20]:
                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if msg.sender == ext_call.return_data[12 len 20]:
                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                        gas gas_remaining wei
                                       args address(arg1), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                            gas gas_remaining wei
                                           args address(arg1), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        stor2[ext_call.return_data[0]] = arg3
                                        stor1[arg3].field_0 = arg1
                                        stor1[arg3].field_256 = arg2
                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                            else:
                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if ext_call.return_data[12 len 20] == msg.sender:
                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                gas gas_remaining wei
                                               args address(arg1), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                    gas gas_remaining wei
                                                   args address(arg1), arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                stor2[ext_call.return_data[0]] = arg3
                                                stor1[arg3].field_0 = arg1
                                                stor1[arg3].field_256 = arg2
                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                    else:
                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                gas gas_remaining wei
                                               args address(ext_call.return_data[0]), msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'You must be owner or approved for this summoner'
                                            else:
                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                        gas gas_remaining wei
                                                       args address(arg1), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                            gas gas_remaining wei
                                                           args address(arg1), arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        stor2[ext_call.return_data[0]] = arg3
                                                        stor1[arg3].field_0 = arg1
                                                        stor1[arg3].field_256 = arg2
                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.getApproved(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if ext_call.return_data[12 len 20] == msg.sender:
                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if msg.sender == ext_call.return_data[12 len 20]:
                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                gas gas_remaining wei
                                               args address(arg1), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                    gas gas_remaining wei
                                                   args address(arg1), arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                stor2[ext_call.return_data[0]] = arg3
                                                stor1[arg3].field_0 = arg1
                                                stor1[arg3].field_256 = arg2
                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                    else:
                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == msg.sender:
                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                        gas gas_remaining wei
                                                       args address(arg1), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                            gas gas_remaining wei
                                                           args address(arg1), arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        stor2[ext_call.return_data[0]] = arg3
                                                        stor1[arg3].field_0 = arg1
                                                        stor1[arg3].field_256 = arg2
                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                            else:
                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                        gas gas_remaining wei
                                                       args address(ext_call.return_data[0]), msg.sender
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    if not ext_call.return_data[0]:
                                                        revert with 0, 'You must be owner or approved for this summoner'
                                                    else:
                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                gas gas_remaining wei
                                                               args address(arg1), arg2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor2[ext_call.return_data[0]] = arg3
                                                                stor1[arg3].field_0 = arg1
                                                                stor1[arg3].field_256 = arg2
                                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                            else:
                                require ext_code.size(arg1)
                                staticcall arg1.isApprovedForAll(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(ext_call.return_data[0]), msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'You must be owner or approved for this token'
                                    else:
                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if msg.sender == ext_call.return_data[12 len 20]:
                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                        gas gas_remaining wei
                                                       args address(arg1), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                            gas gas_remaining wei
                                                           args address(arg1), arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        stor2[ext_call.return_data[0]] = arg3
                                                        stor1[arg3].field_0 = arg1
                                                        stor1[arg3].field_256 = arg2
                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                            else:
                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args arg3
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] == msg.sender:
                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                gas gas_remaining wei
                                                               args address(arg1), arg2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor2[ext_call.return_data[0]] = arg3
                                                                stor1[arg3].field_0 = arg1
                                                                stor1[arg3].field_256 = arg2
                                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                    else:
                                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(ext_call.return_data[0]), msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                            if not ext_call.return_data[0]:
                                                                revert with 0, 'You must be owner or approved for this summoner'
                                                            else:
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        stor2[ext_call.return_data[0]] = arg3
                                                                        stor1[arg3].field_0 = arg1
                                                                        stor1[arg3].field_256 = arg2
                                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
            else:
                require ext_code.size(arg1)
                staticcall arg1.ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if msg.sender == ext_call.return_data[12 len 20]:
                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if msg.sender == ext_call.return_data[12 len 20]:
                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                        gas gas_remaining wei
                                       args address(arg1), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                            gas gas_remaining wei
                                           args address(arg1), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        stor2[ext_call.return_data[0]] = arg3
                                        stor1[arg3].field_0 = arg1
                                        stor1[arg3].field_256 = arg2
                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                            else:
                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if ext_call.return_data[12 len 20] == msg.sender:
                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                gas gas_remaining wei
                                               args address(arg1), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                    gas gas_remaining wei
                                                   args address(arg1), arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                stor2[ext_call.return_data[0]] = arg3
                                                stor1[arg3].field_0 = arg1
                                                stor1[arg3].field_256 = arg2
                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                    else:
                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                gas gas_remaining wei
                                               args address(ext_call.return_data[0]), msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'You must be owner or approved for this summoner'
                                            else:
                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                        gas gas_remaining wei
                                                       args address(arg1), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                            gas gas_remaining wei
                                                           args address(arg1), arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        stor2[ext_call.return_data[0]] = arg3
                                                        stor1[arg3].field_0 = arg1
                                                        stor1[arg3].field_256 = arg2
                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.getApproved(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if ext_call.return_data[12 len 20] == msg.sender:
                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if msg.sender == ext_call.return_data[12 len 20]:
                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                gas gas_remaining wei
                                               args address(arg1), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                    gas gas_remaining wei
                                                   args address(arg1), arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                stor2[ext_call.return_data[0]] = arg3
                                                stor1[arg3].field_0 = arg1
                                                stor1[arg3].field_256 = arg2
                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                    else:
                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == msg.sender:
                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                        gas gas_remaining wei
                                                       args address(arg1), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                            gas gas_remaining wei
                                                           args address(arg1), arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        stor2[ext_call.return_data[0]] = arg3
                                                        stor1[arg3].field_0 = arg1
                                                        stor1[arg3].field_256 = arg2
                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                            else:
                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                        gas gas_remaining wei
                                                       args address(ext_call.return_data[0]), msg.sender
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    if not ext_call.return_data[0]:
                                                        revert with 0, 'You must be owner or approved for this summoner'
                                                    else:
                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                gas gas_remaining wei
                                                               args address(arg1), arg2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor2[ext_call.return_data[0]] = arg3
                                                                stor1[arg3].field_0 = arg1
                                                                stor1[arg3].field_256 = arg2
                                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                            else:
                                require ext_code.size(arg1)
                                staticcall arg1.isApprovedForAll(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(ext_call.return_data[0]), msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'You must be owner or approved for this token'
                                    else:
                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if msg.sender == ext_call.return_data[12 len 20]:
                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                        gas gas_remaining wei
                                                       args address(arg1), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                            gas gas_remaining wei
                                                           args address(arg1), arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        stor2[ext_call.return_data[0]] = arg3
                                                        stor1[arg3].field_0 = arg1
                                                        stor1[arg3].field_256 = arg2
                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                            else:
                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args arg3
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] == msg.sender:
                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                gas gas_remaining wei
                                                               args address(arg1), arg2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor2[ext_call.return_data[0]] = arg3
                                                                stor1[arg3].field_0 = arg1
                                                                stor1[arg3].field_256 = arg2
                                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                    else:
                                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(ext_call.return_data[0]), msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                            if not ext_call.return_data[0]:
                                                                revert with 0, 'You must be owner or approved for this summoner'
                                                            else:
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        stor2[ext_call.return_data[0]] = arg3
                                                                        stor1[arg3].field_0 = arg1
                                                                        stor1[arg3].field_256 = arg2
                                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
        else:
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                if uint32(mem[4 len 28]) >> 224 != Panic(uint256 arg1):
                    if not return_data.size:
                        require ext_code.size(arg1)
                        staticcall arg1.ownerOf(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if msg.sender == ext_call.return_data[12 len 20]:
                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if msg.sender == ext_call.return_data[12 len 20]:
                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                gas gas_remaining wei
                                               args address(arg1), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                    gas gas_remaining wei
                                                   args address(arg1), arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                stor2[ext_call.return_data[0]] = arg3
                                                stor1[arg3].field_0 = arg1
                                                stor1[arg3].field_256 = arg2
                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                    else:
                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == msg.sender:
                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                        gas gas_remaining wei
                                                       args address(arg1), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                            gas gas_remaining wei
                                                           args address(arg1), arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        stor2[ext_call.return_data[0]] = arg3
                                                        stor1[arg3].field_0 = arg1
                                                        stor1[arg3].field_256 = arg2
                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                            else:
                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                        gas gas_remaining wei
                                                       args address(ext_call.return_data[0]), msg.sender
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    if not ext_call.return_data[0]:
                                                        revert with 0, 'You must be owner or approved for this summoner'
                                                    else:
                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                gas gas_remaining wei
                                                               args address(arg1), arg2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor2[ext_call.return_data[0]] = arg3
                                                                stor1[arg3].field_0 = arg1
                                                                stor1[arg3].field_256 = arg2
                                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                            else:
                                require ext_code.size(arg1)
                                staticcall arg1.getApproved(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if ext_call.return_data[12 len 20] == msg.sender:
                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if msg.sender == ext_call.return_data[12 len 20]:
                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                        gas gas_remaining wei
                                                       args address(arg1), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                            gas gas_remaining wei
                                                           args address(arg1), arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        stor2[ext_call.return_data[0]] = arg3
                                                        stor1[arg3].field_0 = arg1
                                                        stor1[arg3].field_256 = arg2
                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                            else:
                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args arg3
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] == msg.sender:
                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                gas gas_remaining wei
                                                               args address(arg1), arg2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor2[ext_call.return_data[0]] = arg3
                                                                stor1[arg3].field_0 = arg1
                                                                stor1[arg3].field_256 = arg2
                                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                    else:
                                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(ext_call.return_data[0]), msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                            if not ext_call.return_data[0]:
                                                                revert with 0, 'You must be owner or approved for this summoner'
                                                            else:
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        stor2[ext_call.return_data[0]] = arg3
                                                                        stor1[arg3].field_0 = arg1
                                                                        stor1[arg3].field_256 = arg2
                                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                    else:
                                        require ext_code.size(arg1)
                                        staticcall arg1.isApprovedForAll(address arg1, address arg2) with:
                                                gas gas_remaining wei
                                               args address(ext_call.return_data[0]), msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'You must be owner or approved for this token'
                                            else:
                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args arg3
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if msg.sender == ext_call.return_data[12 len 20]:
                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                gas gas_remaining wei
                                                               args address(arg1), arg2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor2[ext_call.return_data[0]] = arg3
                                                                stor1[arg3].field_0 = arg1
                                                                stor1[arg3].field_256 = arg2
                                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                    else:
                                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                                gas gas_remaining wei
                                                               args arg3
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if ext_call.return_data[12 len 20] == msg.sender:
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        stor2[ext_call.return_data[0]] = arg3
                                                                        stor1[arg3].field_0 = arg1
                                                                        stor1[arg3].field_256 = arg2
                                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                            else:
                                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                        gas gas_remaining wei
                                                                       args address(ext_call.return_data[0]), msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                    if not ext_call.return_data[0]:
                                                                        revert with 0, 'You must be owner or approved for this summoner'
                                                                    else:
                                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                gas gas_remaining wei
                                                                               args address(arg1), arg2
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(arg1), arg2
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                stor2[ext_call.return_data[0]] = arg3
                                                                                stor1[arg3].field_0 = arg1
                                                                                stor1[arg3].field_256 = arg2
                                                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.ownerOf(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if msg.sender == ext_call.return_data[12 len 20]:
                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if msg.sender == ext_call.return_data[12 len 20]:
                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                gas gas_remaining wei
                                               args address(arg1), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                    gas gas_remaining wei
                                                   args address(arg1), arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                stor2[ext_call.return_data[0]] = arg3
                                                stor1[arg3].field_0 = arg1
                                                stor1[arg3].field_256 = arg2
                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                    else:
                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == msg.sender:
                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                        gas gas_remaining wei
                                                       args address(arg1), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                            gas gas_remaining wei
                                                           args address(arg1), arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        stor2[ext_call.return_data[0]] = arg3
                                                        stor1[arg3].field_0 = arg1
                                                        stor1[arg3].field_256 = arg2
                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                            else:
                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                        gas gas_remaining wei
                                                       args address(ext_call.return_data[0]), msg.sender
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    if not ext_call.return_data[0]:
                                                        revert with 0, 'You must be owner or approved for this summoner'
                                                    else:
                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                gas gas_remaining wei
                                                               args address(arg1), arg2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor2[ext_call.return_data[0]] = arg3
                                                                stor1[arg3].field_0 = arg1
                                                                stor1[arg3].field_256 = arg2
                                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                            else:
                                require ext_code.size(arg1)
                                staticcall arg1.getApproved(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if ext_call.return_data[12 len 20] == msg.sender:
                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if msg.sender == ext_call.return_data[12 len 20]:
                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                        gas gas_remaining wei
                                                       args address(arg1), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                            gas gas_remaining wei
                                                           args address(arg1), arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        stor2[ext_call.return_data[0]] = arg3
                                                        stor1[arg3].field_0 = arg1
                                                        stor1[arg3].field_256 = arg2
                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                            else:
                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args arg3
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] == msg.sender:
                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                gas gas_remaining wei
                                                               args address(arg1), arg2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor2[ext_call.return_data[0]] = arg3
                                                                stor1[arg3].field_0 = arg1
                                                                stor1[arg3].field_256 = arg2
                                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                    else:
                                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(ext_call.return_data[0]), msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                            if not ext_call.return_data[0]:
                                                                revert with 0, 'You must be owner or approved for this summoner'
                                                            else:
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        stor2[ext_call.return_data[0]] = arg3
                                                                        stor1[arg3].field_0 = arg1
                                                                        stor1[arg3].field_256 = arg2
                                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                    else:
                                        require ext_code.size(arg1)
                                        staticcall arg1.isApprovedForAll(address arg1, address arg2) with:
                                                gas gas_remaining wei
                                               args address(ext_call.return_data[0]), msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'You must be owner or approved for this token'
                                            else:
                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args arg3
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if msg.sender == ext_call.return_data[12 len 20]:
                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                gas gas_remaining wei
                                                               args address(arg1), arg2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor2[ext_call.return_data[0]] = arg3
                                                                stor1[arg3].field_0 = arg1
                                                                stor1[arg3].field_256 = arg2
                                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                    else:
                                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                                gas gas_remaining wei
                                                               args arg3
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if ext_call.return_data[12 len 20] == msg.sender:
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        stor2[ext_call.return_data[0]] = arg3
                                                                        stor1[arg3].field_0 = arg1
                                                                        stor1[arg3].field_256 = arg2
                                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                            else:
                                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                        gas gas_remaining wei
                                                                       args address(ext_call.return_data[0]), msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                    if not ext_call.return_data[0]:
                                                                        revert with 0, 'You must be owner or approved for this summoner'
                                                                    else:
                                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                gas gas_remaining wei
                                                                               args address(arg1), arg2
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(arg1), arg2
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                stor2[ext_call.return_data[0]] = arg3
                                                                                stor1[arg3].field_0 = arg1
                                                                                stor1[arg3].field_256 = arg2
                                                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                else:
                    if return_data.size <= 35:
                        if not return_data.size:
                            require ext_code.size(arg1)
                            staticcall arg1.ownerOf(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if msg.sender == ext_call.return_data[12 len 20]:
                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if msg.sender == ext_call.return_data[12 len 20]:
                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                    gas gas_remaining wei
                                                   args address(arg1), arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                        gas gas_remaining wei
                                                       args address(arg1), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                    stor2[ext_call.return_data[0]] = arg3
                                                    stor1[arg3].field_0 = arg1
                                                    stor1[arg3].field_256 = arg2
                                                    emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                        else:
                                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                if ext_call.return_data[12 len 20] == msg.sender:
                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                            gas gas_remaining wei
                                                           args address(arg1), arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                        stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                        stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                gas gas_remaining wei
                                                               args address(arg1), arg2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            stor2[ext_call.return_data[0]] = arg3
                                                            stor1[arg3].field_0 = arg1
                                                            stor1[arg3].field_256 = arg2
                                                            emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                else:
                                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(ext_call.return_data[0]), msg.sender
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            revert with 0, 'You must be owner or approved for this summoner'
                                                        else:
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    stor2[ext_call.return_data[0]] = arg3
                                                                    stor1[arg3].field_0 = arg1
                                                                    stor1[arg3].field_256 = arg2
                                                                    emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                else:
                                    require ext_code.size(arg1)
                                    staticcall arg1.getApproved(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if ext_call.return_data[12 len 20] == msg.sender:
                                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                if msg.sender == ext_call.return_data[12 len 20]:
                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                            gas gas_remaining wei
                                                           args address(arg1), arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                        stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                        stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                gas gas_remaining wei
                                                               args address(arg1), arg2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            stor2[ext_call.return_data[0]] = arg3
                                                            stor1[arg3].field_0 = arg1
                                                            stor1[arg3].field_256 = arg2
                                                            emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                else:
                                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] == msg.sender:
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    stor2[ext_call.return_data[0]] = arg3
                                                                    stor1[arg3].field_0 = arg1
                                                                    stor1[arg3].field_256 = arg2
                                                                    emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                        else:
                                                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                    gas gas_remaining wei
                                                                   args address(ext_call.return_data[0]), msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                if not ext_call.return_data[0]:
                                                                    revert with 0, 'You must be owner or approved for this summoner'
                                                                else:
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                        stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                        stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                gas gas_remaining wei
                                                                               args address(arg1), arg2
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                            stor2[ext_call.return_data[0]] = arg3
                                                                            stor1[arg3].field_0 = arg1
                                                                            stor1[arg3].field_256 = arg2
                                                                            emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                        else:
                                            require ext_code.size(arg1)
                                            staticcall arg1.isApprovedForAll(address arg1, address arg2) with:
                                                    gas gas_remaining wei
                                                   args address(ext_call.return_data[0]), msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'You must be owner or approved for this token'
                                                else:
                                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if msg.sender == ext_call.return_data[12 len 20]:
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    stor2[ext_call.return_data[0]] = arg3
                                                                    stor1[arg3].field_0 = arg1
                                                                    stor1[arg3].field_256 = arg2
                                                                    emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                        else:
                                                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                                    gas gas_remaining wei
                                                                   args arg3
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                if ext_call.return_data[12 len 20] == msg.sender:
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                        stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                        stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                gas gas_remaining wei
                                                                               args address(arg1), arg2
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                            stor2[ext_call.return_data[0]] = arg3
                                                                            stor1[arg3].field_0 = arg1
                                                                            stor1[arg3].field_256 = arg2
                                                                            emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                                else:
                                                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                            gas gas_remaining wei
                                                                           args address(ext_call.return_data[0]), msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                        if not ext_call.return_data[0]:
                                                                            revert with 0, 'You must be owner or approved for this summoner'
                                                                        else:
                                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(arg1), arg2
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                                stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                                stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                        gas gas_remaining wei
                                                                                       args address(arg1), arg2
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                    stor2[ext_call.return_data[0]] = arg3
                                                                                    stor1[arg3].field_0 = arg1
                                                                                    stor1[arg3].field_256 = arg2
                                                                                    emit 0x91dd75ea: arg1 << 192, arg2, arg3
                        else:
                            require ext_code.size(arg1)
                            staticcall arg1.ownerOf(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if msg.sender == ext_call.return_data[12 len 20]:
                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if msg.sender == ext_call.return_data[12 len 20]:
                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                    gas gas_remaining wei
                                                   args address(arg1), arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                        gas gas_remaining wei
                                                       args address(arg1), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                    stor2[ext_call.return_data[0]] = arg3
                                                    stor1[arg3].field_0 = arg1
                                                    stor1[arg3].field_256 = arg2
                                                    emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                        else:
                                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                if ext_call.return_data[12 len 20] == msg.sender:
                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                            gas gas_remaining wei
                                                           args address(arg1), arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                        stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                        stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                gas gas_remaining wei
                                                               args address(arg1), arg2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            stor2[ext_call.return_data[0]] = arg3
                                                            stor1[arg3].field_0 = arg1
                                                            stor1[arg3].field_256 = arg2
                                                            emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                else:
                                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(ext_call.return_data[0]), msg.sender
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            revert with 0, 'You must be owner or approved for this summoner'
                                                        else:
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    stor2[ext_call.return_data[0]] = arg3
                                                                    stor1[arg3].field_0 = arg1
                                                                    stor1[arg3].field_256 = arg2
                                                                    emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                else:
                                    require ext_code.size(arg1)
                                    staticcall arg1.getApproved(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if ext_call.return_data[12 len 20] == msg.sender:
                                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                if msg.sender == ext_call.return_data[12 len 20]:
                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                            gas gas_remaining wei
                                                           args address(arg1), arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                        stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                        stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                gas gas_remaining wei
                                                               args address(arg1), arg2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            stor2[ext_call.return_data[0]] = arg3
                                                            stor1[arg3].field_0 = arg1
                                                            stor1[arg3].field_256 = arg2
                                                            emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                else:
                                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] == msg.sender:
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    stor2[ext_call.return_data[0]] = arg3
                                                                    stor1[arg3].field_0 = arg1
                                                                    stor1[arg3].field_256 = arg2
                                                                    emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                        else:
                                                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                    gas gas_remaining wei
                                                                   args address(ext_call.return_data[0]), msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                if not ext_call.return_data[0]:
                                                                    revert with 0, 'You must be owner or approved for this summoner'
                                                                else:
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                        stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                        stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                gas gas_remaining wei
                                                                               args address(arg1), arg2
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                            stor2[ext_call.return_data[0]] = arg3
                                                                            stor1[arg3].field_0 = arg1
                                                                            stor1[arg3].field_256 = arg2
                                                                            emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                        else:
                                            require ext_code.size(arg1)
                                            staticcall arg1.isApprovedForAll(address arg1, address arg2) with:
                                                    gas gas_remaining wei
                                                   args address(ext_call.return_data[0]), msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'You must be owner or approved for this token'
                                                else:
                                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if msg.sender == ext_call.return_data[12 len 20]:
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    stor2[ext_call.return_data[0]] = arg3
                                                                    stor1[arg3].field_0 = arg1
                                                                    stor1[arg3].field_256 = arg2
                                                                    emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                        else:
                                                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                                    gas gas_remaining wei
                                                                   args arg3
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                if ext_call.return_data[12 len 20] == msg.sender:
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                        stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                        stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                gas gas_remaining wei
                                                                               args address(arg1), arg2
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                            stor2[ext_call.return_data[0]] = arg3
                                                                            stor1[arg3].field_0 = arg1
                                                                            stor1[arg3].field_256 = arg2
                                                                            emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                                else:
                                                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                            gas gas_remaining wei
                                                                           args address(ext_call.return_data[0]), msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                        if not ext_call.return_data[0]:
                                                                            revert with 0, 'You must be owner or approved for this summoner'
                                                                        else:
                                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(arg1), arg2
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                                stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                                stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                        gas gas_remaining wei
                                                                                       args address(arg1), arg2
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                    stor2[ext_call.return_data[0]] = arg3
                                                                                    stor1[arg3].field_0 = arg1
                                                                                    stor1[arg3].field_256 = arg2
                                                                                    emit 0x91dd75ea: arg1 << 192, arg2, arg3
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.ownerOf(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if msg.sender == ext_call.return_data[12 len 20]:
                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if msg.sender == ext_call.return_data[12 len 20]:
                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                gas gas_remaining wei
                                               args address(arg1), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                    gas gas_remaining wei
                                                   args address(arg1), arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                stor2[ext_call.return_data[0]] = arg3
                                                stor1[arg3].field_0 = arg1
                                                stor1[arg3].field_256 = arg2
                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                    else:
                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == msg.sender:
                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                        gas gas_remaining wei
                                                       args address(arg1), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                            gas gas_remaining wei
                                                           args address(arg1), arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        stor2[ext_call.return_data[0]] = arg3
                                                        stor1[arg3].field_0 = arg1
                                                        stor1[arg3].field_256 = arg2
                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                            else:
                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                        gas gas_remaining wei
                                                       args address(ext_call.return_data[0]), msg.sender
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    if not ext_call.return_data[0]:
                                                        revert with 0, 'You must be owner or approved for this summoner'
                                                    else:
                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                gas gas_remaining wei
                                                               args address(arg1), arg2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor2[ext_call.return_data[0]] = arg3
                                                                stor1[arg3].field_0 = arg1
                                                                stor1[arg3].field_256 = arg2
                                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                            else:
                                require ext_code.size(arg1)
                                staticcall arg1.getApproved(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if ext_call.return_data[12 len 20] == msg.sender:
                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if msg.sender == ext_call.return_data[12 len 20]:
                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                        gas gas_remaining wei
                                                       args address(arg1), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                            gas gas_remaining wei
                                                           args address(arg1), arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        stor2[ext_call.return_data[0]] = arg3
                                                        stor1[arg3].field_0 = arg1
                                                        stor1[arg3].field_256 = arg2
                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                            else:
                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args arg3
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] == msg.sender:
                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                gas gas_remaining wei
                                                               args address(arg1), arg2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor2[ext_call.return_data[0]] = arg3
                                                                stor1[arg3].field_0 = arg1
                                                                stor1[arg3].field_256 = arg2
                                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                    else:
                                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(ext_call.return_data[0]), msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                            if not ext_call.return_data[0]:
                                                                revert with 0, 'You must be owner or approved for this summoner'
                                                            else:
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        stor2[ext_call.return_data[0]] = arg3
                                                                        stor1[arg3].field_0 = arg1
                                                                        stor1[arg3].field_256 = arg2
                                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                    else:
                                        require ext_code.size(arg1)
                                        staticcall arg1.isApprovedForAll(address arg1, address arg2) with:
                                                gas gas_remaining wei
                                               args address(ext_call.return_data[0]), msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'You must be owner or approved for this token'
                                            else:
                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args arg3
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if msg.sender == ext_call.return_data[12 len 20]:
                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                gas gas_remaining wei
                                                               args address(arg1), arg2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor2[ext_call.return_data[0]] = arg3
                                                                stor1[arg3].field_0 = arg1
                                                                stor1[arg3].field_256 = arg2
                                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                    else:
                                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                                gas gas_remaining wei
                                                               args arg3
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if ext_call.return_data[12 len 20] == msg.sender:
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        stor2[ext_call.return_data[0]] = arg3
                                                                        stor1[arg3].field_0 = arg1
                                                                        stor1[arg3].field_256 = arg2
                                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                            else:
                                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                        gas gas_remaining wei
                                                                       args address(ext_call.return_data[0]), msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                    if not ext_call.return_data[0]:
                                                                        revert with 0, 'You must be owner or approved for this summoner'
                                                                    else:
                                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                gas gas_remaining wei
                                                                               args address(arg1), arg2
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(arg1), arg2
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                stor2[ext_call.return_data[0]] = arg3
                                                                                stor1[arg3].field_0 = arg1
                                                                                stor1[arg3].field_256 = arg2
                                                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
            else:
                if return_data.size >= 68:
                    mem[96 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] <= test266151307() and ext_call.return_data[0] + 36 <= return_data.size:
                        if mem[ext_call.return_data[0] + 96] <= test266151307():
                            if ext_call.return_data[0] + mem[ext_call.return_data[0] + 96] + 32 <= return_data.size - 4:
                                if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 96] + 31) + 97 > test266151307() or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 96] + 31) + 97 < 96:
                                    revert with 'NH{q', 65
                                else:
                                    mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 96] + 31) + 97
                                    if ext_call.return_data[0] + 96:
                                        mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 96] + 31) + 97] = 0x6352211e00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = arg2
                                        require ext_code.size(arg1)
                                        staticcall arg1.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg2
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            _89 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _100 = mem[_89]
                                            require mem[_89] == mem[_89 + 12 len 20]
                                            if msg.sender == mem[_89 + 12 len 20]:
                                                mem[mem[64] + 4] = arg3
                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args arg3
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _250 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _275 = mem[_250]
                                                    require mem[_250] == mem[_250 + 12 len 20]
                                                    if msg.sender == mem[_250 + 12 len 20]:
                                                        _470 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_470] = 57005
                                                        mem[_470 + 32] = 0
                                                        _471 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_471] = arg1
                                                        mem[_471 + 32] = arg2
                                                        mem[mem[64] + 4] = arg1
                                                        mem[mem[64] + 36] = arg2
                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                gas gas_remaining wei
                                                               args address(arg1), arg2
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            _816 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_816] == mem[_816]
                                                            mem[0] = mem[_816]
                                                            mem[0] = stor2[mem[0]]
                                                            mem[32] = 1
                                                            stor1[mem[0]].field_0 = 57005
                                                            stor1[mem[0]].field_16 = 0
                                                            stor1[mem[0]].field_256 = 0
                                                            _1151 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_1151] = arg1
                                                            mem[_1151 + 32] = arg2
                                                            mem[mem[64] + 4] = arg1
                                                            mem[mem[64] + 36] = arg2
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                _1807 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                require mem[_1807] == mem[_1807]
                                                                mem[0] = mem[_1807]
                                                                stor2[mem[0]] = arg3
                                                                stor1[arg3].field_0 = arg1
                                                                stor1[arg3].field_256 = arg2
                                                                emit 0x91dd75ea: address(arg1), arg2, arg3
                                                    else:
                                                        mem[mem[64] + 4] = arg3
                                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                                gas gas_remaining wei
                                                               args arg3
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            _535 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_535] == mem[_535 + 12 len 20]
                                                            if mem[_535 + 12 len 20] == msg.sender:
                                                                _978 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_978] = 57005
                                                                mem[_978 + 32] = 0
                                                                _979 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_979] = arg1
                                                                mem[_979 + 32] = arg2
                                                                mem[mem[64] + 4] = arg1
                                                                mem[mem[64] + 36] = arg2
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    _1548 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_1548] == mem[_1548]
                                                                    mem[0] = mem[_1548]
                                                                    mem[0] = stor2[mem[0]]
                                                                    mem[32] = 1
                                                                    stor1[mem[0]].field_0 = 57005
                                                                    stor1[mem[0]].field_16 = 0
                                                                    stor1[mem[0]].field_256 = 0
                                                                    _2106 = mem[64]
                                                                    mem[64] = mem[64] + 64
                                                                    mem[_2106] = arg1
                                                                    mem[_2106 + 32] = arg2
                                                                    mem[mem[64] + 4] = arg1
                                                                    mem[mem[64] + 36] = arg2
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _2951 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_2951] == mem[_2951]
                                                                        mem[0] = mem[_2951]
                                                                        stor2[mem[0]] = arg3
                                                                        stor1[arg3].field_0 = arg1
                                                                        stor1[arg3].field_256 = arg2
                                                                        emit 0x91dd75ea: address(arg1), arg2, arg3
                                                            else:
                                                                mem[mem[64] + 4] = address(_275)
                                                                mem[mem[64] + 36] = msg.sender
                                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                        gas gas_remaining wei
                                                                       args address(_275), msg.sender
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    _1422 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_1422] == bool(mem[_1422])
                                                                    if not mem[_1422]:
                                                                        revert with 0, 'You must be owner or approved for this summoner'
                                                                    else:
                                                                        _2150 = mem[64]
                                                                        mem[64] = mem[64] + 64
                                                                        mem[_2150] = 57005
                                                                        mem[_2150 + 32] = 0
                                                                        _2151 = mem[64]
                                                                        mem[64] = mem[64] + 64
                                                                        mem[_2151] = arg1
                                                                        mem[_2151 + 32] = arg2
                                                                        mem[mem[64] + 4] = arg1
                                                                        mem[mem[64] + 36] = arg2
                                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                gas gas_remaining wei
                                                                               args address(arg1), arg2
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _3011 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_3011] == mem[_3011]
                                                                            mem[0] = mem[_3011]
                                                                            mem[0] = stor2[mem[0]]
                                                                            mem[32] = 1
                                                                            stor1[mem[0]].field_0 = 57005
                                                                            stor1[mem[0]].field_16 = 0
                                                                            stor1[mem[0]].field_256 = 0
                                                                            _3701 = mem[64]
                                                                            mem[64] = mem[64] + 64
                                                                            mem[_3701] = arg1
                                                                            mem[_3701 + 32] = arg2
                                                                            mem[mem[64] + 4] = arg1
                                                                            mem[mem[64] + 36] = arg2
                                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(arg1), arg2
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _4524 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                require mem[_4524] == mem[_4524]
                                                                                mem[0] = mem[_4524]
                                                                                stor2[mem[0]] = arg3
                                                                                stor1[arg3].field_0 = arg1
                                                                                stor1[arg3].field_256 = arg2
                                                                                emit 0x91dd75ea: address(arg1), arg2, arg3
                                            else:
                                                mem[mem[64] + 4] = arg2
                                                require ext_code.size(arg1)
                                                staticcall arg1.getApproved(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args arg2
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _221 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_221] == mem[_221 + 12 len 20]
                                                    if mem[_221 + 12 len 20] == msg.sender:
                                                        mem[mem[64] + 4] = arg3
                                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                                gas gas_remaining wei
                                                               args arg3
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            _536 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _597 = mem[_536]
                                                            require mem[_536] == mem[_536 + 12 len 20]
                                                            if msg.sender == mem[_536 + 12 len 20]:
                                                                _981 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_981] = 57005
                                                                mem[_981 + 32] = 0
                                                                _982 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_982] = arg1
                                                                mem[_982 + 32] = arg2
                                                                mem[mem[64] + 4] = arg1
                                                                mem[mem[64] + 36] = arg2
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    _1550 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_1550] == mem[_1550]
                                                                    mem[0] = mem[_1550]
                                                                    mem[0] = stor2[mem[0]]
                                                                    mem[32] = 1
                                                                    stor1[mem[0]].field_0 = 57005
                                                                    stor1[mem[0]].field_16 = 0
                                                                    stor1[mem[0]].field_256 = 0
                                                                    _2113 = mem[64]
                                                                    mem[64] = mem[64] + 64
                                                                    mem[_2113] = arg1
                                                                    mem[_2113 + 32] = arg2
                                                                    mem[mem[64] + 4] = arg1
                                                                    mem[mem[64] + 36] = arg2
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _2952 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_2952] == mem[_2952]
                                                                        mem[0] = mem[_2952]
                                                                        stor2[mem[0]] = arg3
                                                                        stor1[arg3].field_0 = arg1
                                                                        stor1[arg3].field_256 = arg2
                                                                        emit 0x91dd75ea: address(arg1), arg2, arg3
                                                            else:
                                                                mem[mem[64] + 4] = arg3
                                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                                        gas gas_remaining wei
                                                                       args arg3
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    _1128 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_1128] == mem[_1128 + 12 len 20]
                                                                    if mem[_1128 + 12 len 20] == msg.sender:
                                                                        _1808 = mem[64]
                                                                        mem[64] = mem[64] + 64
                                                                        mem[_1808] = 57005
                                                                        mem[_1808 + 32] = 0
                                                                        _1809 = mem[64]
                                                                        mem[64] = mem[64] + 64
                                                                        mem[_1809] = arg1
                                                                        mem[_1809 + 32] = arg2
                                                                        mem[mem[64] + 4] = arg1
                                                                        mem[mem[64] + 36] = arg2
                                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                gas gas_remaining wei
                                                                               args address(arg1), arg2
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _2651 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_2651] == mem[_2651]
                                                                            mem[0] = mem[_2651]
                                                                            mem[0] = stor2[mem[0]]
                                                                            mem[32] = 1
                                                                            stor1[mem[0]].field_0 = 57005
                                                                            stor1[mem[0]].field_16 = 0
                                                                            stor1[mem[0]].field_256 = 0
                                                                            _3324 = mem[64]
                                                                            mem[64] = mem[64] + 64
                                                                            mem[_3324] = arg1
                                                                            mem[_3324 + 32] = arg2
                                                                            mem[mem[64] + 4] = arg1
                                                                            mem[mem[64] + 36] = arg2
                                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(arg1), arg2
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _4178 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                require mem[_4178] == mem[_4178]
                                                                                mem[0] = mem[_4178]
                                                                                stor2[mem[0]] = arg3
                                                                                stor1[arg3].field_0 = arg1
                                                                                stor1[arg3].field_256 = arg2
                                                                                emit 0x91dd75ea: address(arg1), arg2, arg3
                                                                    else:
                                                                        mem[mem[64] + 4] = address(_597)
                                                                        mem[mem[64] + 36] = msg.sender
                                                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                                gas gas_remaining wei
                                                                               args address(_597), msg.sender
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _2511 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_2511] == bool(mem[_2511])
                                                                            if not mem[_2511]:
                                                                                revert with 0, 'You must be owner or approved for this summoner'
                                                                            else:
                                                                                _3356 = mem[64]
                                                                                mem[64] = mem[64] + 64
                                                                                mem[_3356] = 57005
                                                                                mem[_3356 + 32] = 0
                                                                                _3357 = mem[64]
                                                                                mem[64] = mem[64] + 64
                                                                                mem[_3357] = arg1
                                                                                mem[_3357 + 32] = arg2
                                                                                mem[mem[64] + 4] = arg1
                                                                                mem[mem[64] + 36] = arg2
                                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                        gas gas_remaining wei
                                                                                       args address(arg1), arg2
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _4246 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_4246] == mem[_4246]
                                                                                    mem[0] = mem[_4246]
                                                                                    mem[0] = stor2[mem[0]]
                                                                                    mem[32] = 1
                                                                                    stor1[mem[0]].field_0 = 57005
                                                                                    stor1[mem[0]].field_16 = 0
                                                                                    stor1[mem[0]].field_256 = 0
                                                                                    _4860 = mem[64]
                                                                                    mem[64] = mem[64] + 64
                                                                                    mem[_4860] = arg1
                                                                                    mem[_4860 + 32] = arg2
                                                                                    mem[mem[64] + 4] = arg1
                                                                                    mem[mem[64] + 36] = arg2
                                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                            gas gas_remaining wei
                                                                                           args address(arg1), arg2
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _5492 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        require mem[_5492] == mem[_5492]
                                                                                        mem[0] = mem[_5492]
                                                                                        stor2[mem[0]] = arg3
                                                                                        stor1[arg3].field_0 = arg1
                                                                                        stor1[arg3].field_256 = arg2
                                                                                        emit 0x91dd75ea: address(arg1), arg2, arg3
                                                    else:
                                                        mem[mem[64] + 4] = address(_100)
                                                        mem[mem[64] + 36] = msg.sender
                                                        require ext_code.size(arg1)
                                                        staticcall arg1.isApprovedForAll(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(_100), msg.sender
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            _637 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_637] == bool(mem[_637])
                                                            if not mem[_637]:
                                                                revert with 0, 'You must be owner or approved for this token'
                                                            else:
                                                                mem[mem[64] + 4] = arg3
                                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                                        gas gas_remaining wei
                                                                       args arg3
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    _1303 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _1423 = mem[_1303]
                                                                    require mem[_1303] == mem[_1303 + 12 len 20]
                                                                    if msg.sender == mem[_1303 + 12 len 20]:
                                                                        _2153 = mem[64]
                                                                        mem[64] = mem[64] + 64
                                                                        mem[_2153] = 57005
                                                                        mem[_2153 + 32] = 0
                                                                        _2154 = mem[64]
                                                                        mem[64] = mem[64] + 64
                                                                        mem[_2154] = arg1
                                                                        mem[_2154 + 32] = arg2
                                                                        mem[mem[64] + 4] = arg1
                                                                        mem[mem[64] + 36] = arg2
                                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                gas gas_remaining wei
                                                                               args address(arg1), arg2
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _3012 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_3012] == mem[_3012]
                                                                            mem[0] = mem[_3012]
                                                                            mem[0] = stor2[mem[0]]
                                                                            mem[32] = 1
                                                                            stor1[mem[0]].field_0 = 57005
                                                                            stor1[mem[0]].field_16 = 0
                                                                            stor1[mem[0]].field_256 = 0
                                                                            _3707 = mem[64]
                                                                            mem[64] = mem[64] + 64
                                                                            mem[_3707] = arg1
                                                                            mem[_3707 + 32] = arg2
                                                                            mem[mem[64] + 4] = arg1
                                                                            mem[mem[64] + 36] = arg2
                                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(arg1), arg2
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _4525 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                require mem[_4525] == mem[_4525]
                                                                                mem[0] = mem[_4525]
                                                                                stor2[mem[0]] = arg3
                                                                                stor1[arg3].field_0 = arg1
                                                                                stor1[arg3].field_256 = arg2
                                                                                emit 0x91dd75ea: address(arg1), arg2, arg3
                                                                    else:
                                                                        mem[mem[64] + 4] = arg3
                                                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                                                gas gas_remaining wei
                                                                               args arg3
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _2370 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_2370] == mem[_2370 + 12 len 20]
                                                                            if mem[_2370 + 12 len 20] == msg.sender:
                                                                                _3359 = mem[64]
                                                                                mem[64] = mem[64] + 64
                                                                                mem[_3359] = 57005
                                                                                mem[_3359 + 32] = 0
                                                                                _3360 = mem[64]
                                                                                mem[64] = mem[64] + 64
                                                                                mem[_3360] = arg1
                                                                                mem[_3360 + 32] = arg2
                                                                                mem[mem[64] + 4] = arg1
                                                                                mem[mem[64] + 36] = arg2
                                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                        gas gas_remaining wei
                                                                                       args address(arg1), arg2
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _4247 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_4247] == mem[_4247]
                                                                                    mem[0] = mem[_4247]
                                                                                    mem[0] = stor2[mem[0]]
                                                                                    mem[32] = 1
                                                                                    stor1[mem[0]].field_0 = 57005
                                                                                    stor1[mem[0]].field_16 = 0
                                                                                    stor1[mem[0]].field_256 = 0
                                                                                    _4866 = mem[64]
                                                                                    mem[64] = mem[64] + 64
                                                                                    mem[_4866] = arg1
                                                                                    mem[_4866 + 32] = arg2
                                                                                    mem[mem[64] + 4] = arg1
                                                                                    mem[mem[64] + 36] = arg2
                                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                            gas gas_remaining wei
                                                                                           args address(arg1), arg2
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _5493 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        require mem[_5493] == mem[_5493]
                                                                                        mem[0] = mem[_5493]
                                                                                        stor2[mem[0]] = arg3
                                                                                        stor1[arg3].field_0 = arg1
                                                                                        stor1[arg3].field_256 = arg2
                                                                                        emit 0x91dd75ea: address(arg1), arg2, arg3
                                                                            else:
                                                                                mem[mem[64] + 4] = address(_1423)
                                                                                mem[mem[64] + 36] = msg.sender
                                                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                                        gas gas_remaining wei
                                                                                       args address(_1423), msg.sender
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _4099 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_4099] == bool(mem[_4099])
                                                                                    if not mem[_4099]:
                                                                                        revert with 0, 'You must be owner or approved for this summoner'
                                                                                    else:
                                                                                        _4898 = mem[64]
                                                                                        mem[64] = mem[64] + 64
                                                                                        mem[_4898] = 57005
                                                                                        mem[_4898 + 32] = 0
                                                                                        _4899 = mem[64]
                                                                                        mem[64] = mem[64] + 64
                                                                                        mem[_4899] = arg1
                                                                                        mem[_4899 + 32] = arg2
                                                                                        mem[mem[64] + 4] = arg1
                                                                                        mem[mem[64] + 36] = arg2
                                                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                                gas gas_remaining wei
                                                                                               args address(arg1), arg2
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _5541 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 32
                                                                                            require mem[_5541] == mem[_5541]
                                                                                            mem[0] = mem[_5541]
                                                                                            mem[0] = stor2[mem[0]]
                                                                                            mem[32] = 1
                                                                                            stor1[mem[0]].field_0 = 57005
                                                                                            stor1[mem[0]].field_16 = 0
                                                                                            stor1[mem[0]].field_256 = 0
                                                                                            _5894 = mem[64]
                                                                                            mem[64] = mem[64] + 64
                                                                                            mem[_5894] = arg1
                                                                                            mem[_5894 + 32] = arg2
                                                                                            mem[mem[64] + 4] = arg1
                                                                                            mem[mem[64] + 36] = arg2
                                                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                                    gas gas_remaining wei
                                                                                                   args address(arg1), arg2
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _6141 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                require mem[_6141] == mem[_6141]
                                                                                                mem[0] = mem[_6141]
                                                                                                stor2[mem[0]] = arg3
                                                                                                stor1[arg3].field_0 = arg1
                                                                                                stor1[arg3].field_256 = arg2
                                                                                                emit 0x91dd75ea: address(arg1), arg2, arg3
                                    else:
                                        if not return_data.size:
                                            mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 96] + 31) + 97] = 0x6352211e00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = arg2
                                            require ext_code.size(arg1)
                                            staticcall arg1.ownerOf(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args arg2
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                _101 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _114 = mem[_101]
                                                require mem[_101] == mem[_101 + 12 len 20]
                                                if msg.sender == mem[_101 + 12 len 20]:
                                                    mem[mem[64] + 4] = arg3
                                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args arg3
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _276 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _305 = mem[_276]
                                                        require mem[_276] == mem[_276 + 12 len 20]
                                                        if msg.sender == mem[_276 + 12 len 20]:
                                                            _518 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_518] = 57005
                                                            mem[_518 + 32] = 0
                                                            _519 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_519] = arg1
                                                            mem[_519 + 32] = arg2
                                                            mem[mem[64] + 4] = arg1
                                                            mem[mem[64] + 36] = arg2
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                _912 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                require mem[_912] == mem[_912]
                                                                mem[0] = mem[_912]
                                                                mem[0] = stor2[mem[0]]
                                                                mem[32] = 1
                                                                stor1[mem[0]].field_0 = 57005
                                                                stor1[mem[0]].field_16 = 0
                                                                stor1[mem[0]].field_256 = 0
                                                                _1249 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_1249] = arg1
                                                                mem[_1249 + 32] = arg2
                                                                mem[mem[64] + 4] = arg1
                                                                mem[mem[64] + 36] = arg2
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    _1974 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_1974] == mem[_1974]
                                                                    mem[0] = mem[_1974]
                                                                    stor2[mem[0]] = arg3
                                                                    stor1[arg3].field_0 = arg1
                                                                    stor1[arg3].field_256 = arg2
                                                                    emit 0x91dd75ea: address(arg1), arg2, arg3
                                                        else:
                                                            mem[mem[64] + 4] = arg3
                                                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                                    gas gas_remaining wei
                                                                   args arg3
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                _599 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                require mem[_599] == mem[_599 + 12 len 20]
                                                                if mem[_599 + 12 len 20] == msg.sender:
                                                                    _1076 = mem[64]
                                                                    mem[64] = mem[64] + 64
                                                                    mem[_1076] = 57005
                                                                    mem[_1076 + 32] = 0
                                                                    _1077 = mem[64]
                                                                    mem[64] = mem[64] + 64
                                                                    mem[_1077] = arg1
                                                                    mem[_1077 + 32] = arg2
                                                                    mem[mem[64] + 4] = arg1
                                                                    mem[mem[64] + 36] = arg2
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _1710 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_1710] == mem[_1710]
                                                                        mem[0] = mem[_1710]
                                                                        mem[0] = stor2[mem[0]]
                                                                        mem[32] = 1
                                                                        stor1[mem[0]].field_0 = 57005
                                                                        stor1[mem[0]].field_16 = 0
                                                                        stor1[mem[0]].field_256 = 0
                                                                        _2256 = mem[64]
                                                                        mem[64] = mem[64] + 64
                                                                        mem[_2256] = arg1
                                                                        mem[_2256 + 32] = arg2
                                                                        mem[mem[64] + 4] = arg1
                                                                        mem[mem[64] + 36] = arg2
                                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                gas gas_remaining wei
                                                                               args address(arg1), arg2
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _3153 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_3153] == mem[_3153]
                                                                            mem[0] = mem[_3153]
                                                                            stor2[mem[0]] = arg3
                                                                            stor1[arg3].field_0 = arg1
                                                                            stor1[arg3].field_256 = arg2
                                                                            emit 0x91dd75ea: address(arg1), arg2, arg3
                                                                else:
                                                                    mem[mem[64] + 4] = address(_305)
                                                                    mem[mem[64] + 36] = msg.sender
                                                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                            gas gas_remaining wei
                                                                           args address(_305), msg.sender
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _1552 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_1552] == bool(mem[_1552])
                                                                        if not mem[_1552]:
                                                                            revert with 0, 'You must be owner or approved for this summoner'
                                                                        else:
                                                                            _2315 = mem[64]
                                                                            mem[64] = mem[64] + 64
                                                                            mem[_2315] = 57005
                                                                            mem[_2315 + 32] = 0
                                                                            _2316 = mem[64]
                                                                            mem[64] = mem[64] + 64
                                                                            mem[_2316] = arg1
                                                                            mem[_2316 + 32] = arg2
                                                                            mem[mem[64] + 4] = arg1
                                                                            mem[mem[64] + 36] = arg2
                                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(arg1), arg2
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _3257 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                require mem[_3257] == mem[_3257]
                                                                                mem[0] = mem[_3257]
                                                                                mem[0] = stor2[mem[0]]
                                                                                mem[32] = 1
                                                                                stor1[mem[0]].field_0 = 57005
                                                                                stor1[mem[0]].field_16 = 0
                                                                                stor1[mem[0]].field_256 = 0
                                                                                _3846 = mem[64]
                                                                                mem[64] = mem[64] + 64
                                                                                mem[_3846] = arg1
                                                                                mem[_3846 + 32] = arg2
                                                                                mem[mem[64] + 4] = arg1
                                                                                mem[mem[64] + 36] = arg2
                                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                        gas gas_remaining wei
                                                                                       args address(arg1), arg2
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _4738 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_4738] == mem[_4738]
                                                                                    mem[0] = mem[_4738]
                                                                                    stor2[mem[0]] = arg3
                                                                                    stor1[arg3].field_0 = arg1
                                                                                    stor1[arg3].field_256 = arg2
                                                                                    emit 0x91dd75ea: address(arg1), arg2, arg3
                                                else:
                                                    mem[mem[64] + 4] = arg2
                                                    require ext_code.size(arg1)
                                                    staticcall arg1.getApproved(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args arg2
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _246 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_246] == mem[_246 + 12 len 20]
                                                        if mem[_246 + 12 len 20] == msg.sender:
                                                            mem[mem[64] + 4] = arg3
                                                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                                    gas gas_remaining wei
                                                                   args arg3
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                _600 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _652 = mem[_600]
                                                                require mem[_600] == mem[_600 + 12 len 20]
                                                                if msg.sender == mem[_600 + 12 len 20]:
                                                                    _1079 = mem[64]
                                                                    mem[64] = mem[64] + 64
                                                                    mem[_1079] = 57005
                                                                    mem[_1079 + 32] = 0
                                                                    _1080 = mem[64]
                                                                    mem[64] = mem[64] + 64
                                                                    mem[_1080] = arg1
                                                                    mem[_1080 + 32] = arg2
                                                                    mem[mem[64] + 4] = arg1
                                                                    mem[mem[64] + 36] = arg2
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _1712 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_1712] == mem[_1712]
                                                                        mem[0] = mem[_1712]
                                                                        mem[0] = stor2[mem[0]]
                                                                        mem[32] = 1
                                                                        stor1[mem[0]].field_0 = 57005
                                                                        stor1[mem[0]].field_16 = 0
                                                                        stor1[mem[0]].field_256 = 0
                                                                        _2263 = mem[64]
                                                                        mem[64] = mem[64] + 64
                                                                        mem[_2263] = arg1
                                                                        mem[_2263 + 32] = arg2
                                                                        mem[mem[64] + 4] = arg1
                                                                        mem[mem[64] + 36] = arg2
                                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                gas gas_remaining wei
                                                                               args address(arg1), arg2
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _3154 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_3154] == mem[_3154]
                                                                            mem[0] = mem[_3154]
                                                                            stor2[mem[0]] = arg3
                                                                            stor1[arg3].field_0 = arg1
                                                                            stor1[arg3].field_256 = arg2
                                                                            emit 0x91dd75ea: address(arg1), arg2, arg3
                                                                else:
                                                                    mem[mem[64] + 4] = arg3
                                                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                                            gas gas_remaining wei
                                                                           args arg3
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _1223 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_1223] == mem[_1223 + 12 len 20]
                                                                        if mem[_1223 + 12 len 20] == msg.sender:
                                                                            _1975 = mem[64]
                                                                            mem[64] = mem[64] + 64
                                                                            mem[_1975] = 57005
                                                                            mem[_1975 + 32] = 0
                                                                            _1976 = mem[64]
                                                                            mem[64] = mem[64] + 64
                                                                            mem[_1976] = arg1
                                                                            mem[_1976 + 32] = arg2
                                                                            mem[mem[64] + 4] = arg1
                                                                            mem[mem[64] + 36] = arg2
                                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(arg1), arg2
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _2846 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                require mem[_2846] == mem[_2846]
                                                                                mem[0] = mem[_2846]
                                                                                mem[0] = stor2[mem[0]]
                                                                                mem[32] = 1
                                                                                stor1[mem[0]].field_0 = 57005
                                                                                stor1[mem[0]].field_16 = 0
                                                                                stor1[mem[0]].field_256 = 0
                                                                                _3504 = mem[64]
                                                                                mem[64] = mem[64] + 64
                                                                                mem[_3504] = arg1
                                                                                mem[_3504 + 32] = arg2
                                                                                mem[mem[64] + 4] = arg1
                                                                                mem[mem[64] + 36] = arg2
                                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                        gas gas_remaining wei
                                                                                       args address(arg1), arg2
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _4350 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_4350] == mem[_4350]
                                                                                    mem[0] = mem[_4350]
                                                                                    stor2[mem[0]] = arg3
                                                                                    stor1[arg3].field_0 = arg1
                                                                                    stor1[arg3].field_256 = arg2
                                                                                    emit 0x91dd75ea: address(arg1), arg2, arg3
                                                                        else:
                                                                            mem[mem[64] + 4] = address(_652)
                                                                            mem[mem[64] + 36] = msg.sender
                                                                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                                    gas gas_remaining wei
                                                                                   args address(_652), msg.sender
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _2656 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                require mem[_2656] == bool(mem[_2656])
                                                                                if not mem[_2656]:
                                                                                    revert with 0, 'You must be owner or approved for this summoner'
                                                                                else:
                                                                                    _3578 = mem[64]
                                                                                    mem[64] = mem[64] + 64
                                                                                    mem[_3578] = 57005
                                                                                    mem[_3578 + 32] = 0
                                                                                    _3579 = mem[64]
                                                                                    mem[64] = mem[64] + 64
                                                                                    mem[_3579] = arg1
                                                                                    mem[_3579 + 32] = arg2
                                                                                    mem[mem[64] + 4] = arg1
                                                                                    mem[mem[64] + 36] = arg2
                                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                            gas gas_remaining wei
                                                                                           args address(arg1), arg2
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _4442 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        require mem[_4442] == mem[_4442]
                                                                                        mem[0] = mem[_4442]
                                                                                        mem[0] = stor2[mem[0]]
                                                                                        mem[32] = 1
                                                                                        stor1[mem[0]].field_0 = 57005
                                                                                        stor1[mem[0]].field_16 = 0
                                                                                        stor1[mem[0]].field_256 = 0
                                                                                        _5017 = mem[64]
                                                                                        mem[64] = mem[64] + 64
                                                                                        mem[_5017] = arg1
                                                                                        mem[_5017 + 32] = arg2
                                                                                        mem[mem[64] + 4] = arg1
                                                                                        mem[mem[64] + 36] = arg2
                                                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                                gas gas_remaining wei
                                                                                               args address(arg1), arg2
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _5610 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 32
                                                                                            require mem[_5610] == mem[_5610]
                                                                                            mem[0] = mem[_5610]
                                                                                            stor2[mem[0]] = arg3
                                                                                            stor1[arg3].field_0 = arg1
                                                                                            stor1[arg3].field_256 = arg2
                                                                                            emit 0x91dd75ea: address(arg1), arg2, arg3
                                                        else:
                                                            mem[mem[64] + 4] = address(_114)
                                                            mem[mem[64] + 36] = msg.sender
                                                            require ext_code.size(arg1)
                                                            staticcall arg1.isApprovedForAll(address arg1, address arg2) with:
                                                                    gas gas_remaining wei
                                                                   args address(_114), msg.sender
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                _708 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                require mem[_708] == bool(mem[_708])
                                                                if not mem[_708]:
                                                                    revert with 0, 'You must be owner or approved for this token'
                                                                else:
                                                                    mem[mem[64] + 4] = arg3
                                                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                                            gas gas_remaining wei
                                                                           args arg3
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _1424 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        _1553 = mem[_1424]
                                                                        require mem[_1424] == mem[_1424 + 12 len 20]
                                                                        if msg.sender == mem[_1424 + 12 len 20]:
                                                                            _2318 = mem[64]
                                                                            mem[64] = mem[64] + 64
                                                                            mem[_2318] = 57005
                                                                            mem[_2318 + 32] = 0
                                                                            _2319 = mem[64]
                                                                            mem[64] = mem[64] + 64
                                                                            mem[_2319] = arg1
                                                                            mem[_2319 + 32] = arg2
                                                                            mem[mem[64] + 4] = arg1
                                                                            mem[mem[64] + 36] = arg2
                                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(arg1), arg2
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _3258 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                require mem[_3258] == mem[_3258]
                                                                                mem[0] = mem[_3258]
                                                                                mem[0] = stor2[mem[0]]
                                                                                mem[32] = 1
                                                                                stor1[mem[0]].field_0 = 57005
                                                                                stor1[mem[0]].field_16 = 0
                                                                                stor1[mem[0]].field_256 = 0
                                                                                _3852 = mem[64]
                                                                                mem[64] = mem[64] + 64
                                                                                mem[_3852] = arg1
                                                                                mem[_3852 + 32] = arg2
                                                                                mem[mem[64] + 4] = arg1
                                                                                mem[mem[64] + 36] = arg2
                                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                        gas gas_remaining wei
                                                                                       args address(arg1), arg2
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _4739 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_4739] == mem[_4739]
                                                                                    mem[0] = mem[_4739]
                                                                                    stor2[mem[0]] = arg3
                                                                                    stor1[arg3].field_0 = arg1
                                                                                    stor1[arg3].field_256 = arg2
                                                                                    emit 0x91dd75ea: address(arg1), arg2, arg3
                                                                        else:
                                                                            mem[mem[64] + 4] = arg3
                                                                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                                                    gas gas_remaining wei
                                                                                   args arg3
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _2520 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                require mem[_2520] == mem[_2520 + 12 len 20]
                                                                                if mem[_2520 + 12 len 20] == msg.sender:
                                                                                    _3581 = mem[64]
                                                                                    mem[64] = mem[64] + 64
                                                                                    mem[_3581] = 57005
                                                                                    mem[_3581 + 32] = 0
                                                                                    _3582 = mem[64]
                                                                                    mem[64] = mem[64] + 64
                                                                                    mem[_3582] = arg1
                                                                                    mem[_3582 + 32] = arg2
                                                                                    mem[mem[64] + 4] = arg1
                                                                                    mem[mem[64] + 36] = arg2
                                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                            gas gas_remaining wei
                                                                                           args address(arg1), arg2
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _4443 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        require mem[_4443] == mem[_4443]
                                                                                        mem[0] = mem[_4443]
                                                                                        mem[0] = stor2[mem[0]]
                                                                                        mem[32] = 1
                                                                                        stor1[mem[0]].field_0 = 57005
                                                                                        stor1[mem[0]].field_16 = 0
                                                                                        stor1[mem[0]].field_256 = 0
                                                                                        _5023 = mem[64]
                                                                                        mem[64] = mem[64] + 64
                                                                                        mem[_5023] = arg1
                                                                                        mem[_5023 + 32] = arg2
                                                                                        mem[mem[64] + 4] = arg1
                                                                                        mem[mem[64] + 36] = arg2
                                                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                                gas gas_remaining wei
                                                                                               args address(arg1), arg2
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _5611 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 32
                                                                                            require mem[_5611] == mem[_5611]
                                                                                            mem[0] = mem[_5611]
                                                                                            stor2[mem[0]] = arg3
                                                                                            stor1[arg3].field_0 = arg1
                                                                                            stor1[arg3].field_256 = arg2
                                                                                            emit 0x91dd75ea: address(arg1), arg2, arg3
                                                                                else:
                                                                                    mem[mem[64] + 4] = address(_1553)
                                                                                    mem[mem[64] + 36] = msg.sender
                                                                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                                            gas gas_remaining wei
                                                                                           args address(_1553), msg.sender
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _4252 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        require mem[_4252] == bool(mem[_4252])
                                                                                        if not mem[_4252]:
                                                                                            revert with 0, 'You must be owner or approved for this summoner'
                                                                                        else:
                                                                                            _5088 = mem[64]
                                                                                            mem[64] = mem[64] + 64
                                                                                            mem[_5088] = 57005
                                                                                            mem[_5088 + 32] = 0
                                                                                            _5089 = mem[64]
                                                                                            mem[64] = mem[64] + 64
                                                                                            mem[_5089] = arg1
                                                                                            mem[_5089 + 32] = arg2
                                                                                            mem[mem[64] + 4] = arg1
                                                                                            mem[mem[64] + 36] = arg2
                                                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                                    gas gas_remaining wei
                                                                                                   args address(arg1), arg2
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _5664 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                require mem[_5664] == mem[_5664]
                                                                                                mem[0] = mem[_5664]
                                                                                                mem[0] = stor2[mem[0]]
                                                                                                mem[32] = 1
                                                                                                stor1[mem[0]].field_0 = 57005
                                                                                                stor1[mem[0]].field_16 = 0
                                                                                                stor1[mem[0]].field_256 = 0
                                                                                                _5973 = mem[64]
                                                                                                mem[64] = mem[64] + 64
                                                                                                mem[_5973] = arg1
                                                                                                mem[_5973 + 32] = arg2
                                                                                                mem[mem[64] + 4] = arg1
                                                                                                mem[mem[64] + 36] = arg2
                                                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args address(arg1), arg2
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _6188 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_6188] == mem[_6188]
                                                                                                    mem[0] = mem[_6188]
                                                                                                    stor2[mem[0]] = arg3
                                                                                                    stor1[arg3].field_0 = arg1
                                                                                                    stor1[arg3].field_256 = arg2
                                                                                                    emit 0x91dd75ea: address(arg1), arg2, arg3
                                        else:
                                            _60 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 96] + 31) + 97
                                            mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 96] + 31) + ceil32(return_data.size) + 98
                                            mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 96] + 31) + 97] = return_data.size
                                            mem[_60 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = arg2
                                            require ext_code.size(arg1)
                                            staticcall arg1.ownerOf(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args arg2
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                _102 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _115 = mem[_102]
                                                require mem[_102] == mem[_102 + 12 len 20]
                                                if msg.sender == mem[_102 + 12 len 20]:
                                                    mem[mem[64] + 4] = arg3
                                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args arg3
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _277 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _306 = mem[_277]
                                                        require mem[_277] == mem[_277 + 12 len 20]
                                                        if msg.sender == mem[_277 + 12 len 20]:
                                                            _521 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_521] = 57005
                                                            mem[_521 + 32] = 0
                                                            _522 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_522] = arg1
                                                            mem[_522 + 32] = arg2
                                                            mem[mem[64] + 4] = arg1
                                                            mem[mem[64] + 36] = arg2
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                _913 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                require mem[_913] == mem[_913]
                                                                mem[0] = mem[_913]
                                                                mem[0] = stor2[mem[0]]
                                                                mem[32] = 1
                                                                stor1[mem[0]].field_0 = 57005
                                                                stor1[mem[0]].field_16 = 0
                                                                stor1[mem[0]].field_256 = 0
                                                                _1255 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_1255] = arg1
                                                                mem[_1255 + 32] = arg2
                                                                mem[mem[64] + 4] = arg1
                                                                mem[mem[64] + 36] = arg2
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    _1978 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_1978] == mem[_1978]
                                                                    mem[0] = mem[_1978]
                                                                    stor2[mem[0]] = arg3
                                                                    stor1[arg3].field_0 = arg1
                                                                    stor1[arg3].field_256 = arg2
                                                                    emit 0x91dd75ea: address(arg1), arg2, arg3
                                                        else:
                                                            mem[mem[64] + 4] = arg3
                                                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                                    gas gas_remaining wei
                                                                   args arg3
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                _601 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                require mem[_601] == mem[_601 + 12 len 20]
                                                                if mem[_601 + 12 len 20] == msg.sender:
                                                                    _1082 = mem[64]
                                                                    mem[64] = mem[64] + 64
                                                                    mem[_1082] = 57005
                                                                    mem[_1082 + 32] = 0
                                                                    _1083 = mem[64]
                                                                    mem[64] = mem[64] + 64
                                                                    mem[_1083] = arg1
                                                                    mem[_1083 + 32] = arg2
                                                                    mem[mem[64] + 4] = arg1
                                                                    mem[mem[64] + 36] = arg2
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _1713 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_1713] == mem[_1713]
                                                                        mem[0] = mem[_1713]
                                                                        mem[0] = stor2[mem[0]]
                                                                        mem[32] = 1
                                                                        stor1[mem[0]].field_0 = 57005
                                                                        stor1[mem[0]].field_16 = 0
                                                                        stor1[mem[0]].field_256 = 0
                                                                        _2269 = mem[64]
                                                                        mem[64] = mem[64] + 64
                                                                        mem[_2269] = arg1
                                                                        mem[_2269 + 32] = arg2
                                                                        mem[mem[64] + 4] = arg1
                                                                        mem[mem[64] + 36] = arg2
                                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                gas gas_remaining wei
                                                                               args address(arg1), arg2
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _3155 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_3155] == mem[_3155]
                                                                            mem[0] = mem[_3155]
                                                                            stor2[mem[0]] = arg3
                                                                            stor1[arg3].field_0 = arg1
                                                                            stor1[arg3].field_256 = arg2
                                                                            emit 0x91dd75ea: address(arg1), arg2, arg3
                                                                else:
                                                                    mem[mem[64] + 4] = address(_306)
                                                                    mem[mem[64] + 36] = msg.sender
                                                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                            gas gas_remaining wei
                                                                           args address(_306), msg.sender
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _1555 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_1555] == bool(mem[_1555])
                                                                        if not mem[_1555]:
                                                                            revert with 0, 'You must be owner or approved for this summoner'
                                                                        else:
                                                                            _2321 = mem[64]
                                                                            mem[64] = mem[64] + 64
                                                                            mem[_2321] = 57005
                                                                            mem[_2321 + 32] = 0
                                                                            _2322 = mem[64]
                                                                            mem[64] = mem[64] + 64
                                                                            mem[_2322] = arg1
                                                                            mem[_2322 + 32] = arg2
                                                                            mem[mem[64] + 4] = arg1
                                                                            mem[mem[64] + 36] = arg2
                                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(arg1), arg2
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _3259 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                require mem[_3259] == mem[_3259]
                                                                                mem[0] = mem[_3259]
                                                                                mem[0] = stor2[mem[0]]
                                                                                mem[32] = 1
                                                                                stor1[mem[0]].field_0 = 57005
                                                                                stor1[mem[0]].field_16 = 0
                                                                                stor1[mem[0]].field_256 = 0
                                                                                _3858 = mem[64]
                                                                                mem[64] = mem[64] + 64
                                                                                mem[_3858] = arg1
                                                                                mem[_3858 + 32] = arg2
                                                                                mem[mem[64] + 4] = arg1
                                                                                mem[mem[64] + 36] = arg2
                                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                        gas gas_remaining wei
                                                                                       args address(arg1), arg2
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _4740 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_4740] == mem[_4740]
                                                                                    mem[0] = mem[_4740]
                                                                                    stor2[mem[0]] = arg3
                                                                                    stor1[arg3].field_0 = arg1
                                                                                    stor1[arg3].field_256 = arg2
                                                                                    emit 0x91dd75ea: address(arg1), arg2, arg3
                                                else:
                                                    mem[mem[64] + 4] = arg2
                                                    require ext_code.size(arg1)
                                                    staticcall arg1.getApproved(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args arg2
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _247 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_247] == mem[_247 + 12 len 20]
                                                        if mem[_247 + 12 len 20] == msg.sender:
                                                            mem[mem[64] + 4] = arg3
                                                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                                    gas gas_remaining wei
                                                                   args arg3
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                _602 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _655 = mem[_602]
                                                                require mem[_602] == mem[_602 + 12 len 20]
                                                                if msg.sender == mem[_602 + 12 len 20]:
                                                                    _1085 = mem[64]
                                                                    mem[64] = mem[64] + 64
                                                                    mem[_1085] = 57005
                                                                    mem[_1085 + 32] = 0
                                                                    _1086 = mem[64]
                                                                    mem[64] = mem[64] + 64
                                                                    mem[_1086] = arg1
                                                                    mem[_1086 + 32] = arg2
                                                                    mem[mem[64] + 4] = arg1
                                                                    mem[mem[64] + 36] = arg2
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _1715 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_1715] == mem[_1715]
                                                                        mem[0] = mem[_1715]
                                                                        mem[0] = stor2[mem[0]]
                                                                        mem[32] = 1
                                                                        stor1[mem[0]].field_0 = 57005
                                                                        stor1[mem[0]].field_16 = 0
                                                                        stor1[mem[0]].field_256 = 0
                                                                        _2276 = mem[64]
                                                                        mem[64] = mem[64] + 64
                                                                        mem[_2276] = arg1
                                                                        mem[_2276 + 32] = arg2
                                                                        mem[mem[64] + 4] = arg1
                                                                        mem[mem[64] + 36] = arg2
                                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                gas gas_remaining wei
                                                                               args address(arg1), arg2
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _3156 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_3156] == mem[_3156]
                                                                            mem[0] = mem[_3156]
                                                                            stor2[mem[0]] = arg3
                                                                            stor1[arg3].field_0 = arg1
                                                                            stor1[arg3].field_256 = arg2
                                                                            emit 0x91dd75ea: address(arg1), arg2, arg3
                                                                else:
                                                                    mem[mem[64] + 4] = arg3
                                                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                                            gas gas_remaining wei
                                                                           args arg3
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _1224 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_1224] == mem[_1224 + 12 len 20]
                                                                        if mem[_1224 + 12 len 20] == msg.sender:
                                                                            _1979 = mem[64]
                                                                            mem[64] = mem[64] + 64
                                                                            mem[_1979] = 57005
                                                                            mem[_1979 + 32] = 0
                                                                            _1980 = mem[64]
                                                                            mem[64] = mem[64] + 64
                                                                            mem[_1980] = arg1
                                                                            mem[_1980 + 32] = arg2
                                                                            mem[mem[64] + 4] = arg1
                                                                            mem[mem[64] + 36] = arg2
                                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(arg1), arg2
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _2848 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                require mem[_2848] == mem[_2848]
                                                                                mem[0] = mem[_2848]
                                                                                mem[0] = stor2[mem[0]]
                                                                                mem[32] = 1
                                                                                stor1[mem[0]].field_0 = 57005
                                                                                stor1[mem[0]].field_16 = 0
                                                                                stor1[mem[0]].field_256 = 0
                                                                                _3511 = mem[64]
                                                                                mem[64] = mem[64] + 64
                                                                                mem[_3511] = arg1
                                                                                mem[_3511 + 32] = arg2
                                                                                mem[mem[64] + 4] = arg1
                                                                                mem[mem[64] + 36] = arg2
                                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                        gas gas_remaining wei
                                                                                       args address(arg1), arg2
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _4351 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_4351] == mem[_4351]
                                                                                    mem[0] = mem[_4351]
                                                                                    stor2[mem[0]] = arg3
                                                                                    stor1[arg3].field_0 = arg1
                                                                                    stor1[arg3].field_256 = arg2
                                                                                    emit 0x91dd75ea: address(arg1), arg2, arg3
                                                                        else:
                                                                            mem[mem[64] + 4] = address(_655)
                                                                            mem[mem[64] + 36] = msg.sender
                                                                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                                    gas gas_remaining wei
                                                                                   args address(_655), msg.sender
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _2661 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                require mem[_2661] == bool(mem[_2661])
                                                                                if not mem[_2661]:
                                                                                    revert with 0, 'You must be owner or approved for this summoner'
                                                                                else:
                                                                                    _3584 = mem[64]
                                                                                    mem[64] = mem[64] + 64
                                                                                    mem[_3584] = 57005
                                                                                    mem[_3584 + 32] = 0
                                                                                    _3585 = mem[64]
                                                                                    mem[64] = mem[64] + 64
                                                                                    mem[_3585] = arg1
                                                                                    mem[_3585 + 32] = arg2
                                                                                    mem[mem[64] + 4] = arg1
                                                                                    mem[mem[64] + 36] = arg2
                                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                            gas gas_remaining wei
                                                                                           args address(arg1), arg2
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _4445 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        require mem[_4445] == mem[_4445]
                                                                                        mem[0] = mem[_4445]
                                                                                        mem[0] = stor2[mem[0]]
                                                                                        mem[32] = 1
                                                                                        stor1[mem[0]].field_0 = 57005
                                                                                        stor1[mem[0]].field_16 = 0
                                                                                        stor1[mem[0]].field_256 = 0
                                                                                        _5030 = mem[64]
                                                                                        mem[64] = mem[64] + 64
                                                                                        mem[_5030] = arg1
                                                                                        mem[_5030 + 32] = arg2
                                                                                        mem[mem[64] + 4] = arg1
                                                                                        mem[mem[64] + 36] = arg2
                                                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                                gas gas_remaining wei
                                                                                               args address(arg1), arg2
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _5612 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 32
                                                                                            require mem[_5612] == mem[_5612]
                                                                                            mem[0] = mem[_5612]
                                                                                            stor2[mem[0]] = arg3
                                                                                            stor1[arg3].field_0 = arg1
                                                                                            stor1[arg3].field_256 = arg2
                                                                                            emit 0x91dd75ea: address(arg1), arg2, arg3
                                                        else:
                                                            mem[mem[64] + 4] = address(_115)
                                                            mem[mem[64] + 36] = msg.sender
                                                            require ext_code.size(arg1)
                                                            staticcall arg1.isApprovedForAll(address arg1, address arg2) with:
                                                                    gas gas_remaining wei
                                                                   args address(_115), msg.sender
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                _709 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                require mem[_709] == bool(mem[_709])
                                                                if not mem[_709]:
                                                                    revert with 0, 'You must be owner or approved for this token'
                                                                else:
                                                                    mem[mem[64] + 4] = arg3
                                                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                                            gas gas_remaining wei
                                                                           args arg3
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _1425 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        _1556 = mem[_1425]
                                                                        require mem[_1425] == mem[_1425 + 12 len 20]
                                                                        if msg.sender == mem[_1425 + 12 len 20]:
                                                                            _2324 = mem[64]
                                                                            mem[64] = mem[64] + 64
                                                                            mem[_2324] = 57005
                                                                            mem[_2324 + 32] = 0
                                                                            _2325 = mem[64]
                                                                            mem[64] = mem[64] + 64
                                                                            mem[_2325] = arg1
                                                                            mem[_2325 + 32] = arg2
                                                                            mem[mem[64] + 4] = arg1
                                                                            mem[mem[64] + 36] = arg2
                                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(arg1), arg2
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _3260 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                require mem[_3260] == mem[_3260]
                                                                                mem[0] = mem[_3260]
                                                                                mem[0] = stor2[mem[0]]
                                                                                mem[32] = 1
                                                                                stor1[mem[0]].field_0 = 57005
                                                                                stor1[mem[0]].field_16 = 0
                                                                                stor1[mem[0]].field_256 = 0
                                                                                _3864 = mem[64]
                                                                                mem[64] = mem[64] + 64
                                                                                mem[_3864] = arg1
                                                                                mem[_3864 + 32] = arg2
                                                                                mem[mem[64] + 4] = arg1
                                                                                mem[mem[64] + 36] = arg2
                                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                        gas gas_remaining wei
                                                                                       args address(arg1), arg2
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _4741 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_4741] == mem[_4741]
                                                                                    mem[0] = mem[_4741]
                                                                                    stor2[mem[0]] = arg3
                                                                                    stor1[arg3].field_0 = arg1
                                                                                    stor1[arg3].field_256 = arg2
                                                                                    emit 0x91dd75ea: address(arg1), arg2, arg3
                                                                        else:
                                                                            mem[mem[64] + 4] = arg3
                                                                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                                                    gas gas_remaining wei
                                                                                   args arg3
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _2528 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                require mem[_2528] == mem[_2528 + 12 len 20]
                                                                                if mem[_2528 + 12 len 20] == msg.sender:
                                                                                    _3587 = mem[64]
                                                                                    mem[64] = mem[64] + 64
                                                                                    mem[_3587] = 57005
                                                                                    mem[_3587 + 32] = 0
                                                                                    _3588 = mem[64]
                                                                                    mem[64] = mem[64] + 64
                                                                                    mem[_3588] = arg1
                                                                                    mem[_3588 + 32] = arg2
                                                                                    mem[mem[64] + 4] = arg1
                                                                                    mem[mem[64] + 36] = arg2
                                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                            gas gas_remaining wei
                                                                                           args address(arg1), arg2
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _4446 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        require mem[_4446] == mem[_4446]
                                                                                        mem[0] = mem[_4446]
                                                                                        mem[0] = stor2[mem[0]]
                                                                                        mem[32] = 1
                                                                                        stor1[mem[0]].field_0 = 57005
                                                                                        stor1[mem[0]].field_16 = 0
                                                                                        stor1[mem[0]].field_256 = 0
                                                                                        _5036 = mem[64]
                                                                                        mem[64] = mem[64] + 64
                                                                                        mem[_5036] = arg1
                                                                                        mem[_5036 + 32] = arg2
                                                                                        mem[mem[64] + 4] = arg1
                                                                                        mem[mem[64] + 36] = arg2
                                                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                                gas gas_remaining wei
                                                                                               args address(arg1), arg2
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _5613 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 32
                                                                                            require mem[_5613] == mem[_5613]
                                                                                            mem[0] = mem[_5613]
                                                                                            stor2[mem[0]] = arg3
                                                                                            stor1[arg3].field_0 = arg1
                                                                                            stor1[arg3].field_256 = arg2
                                                                                            emit 0x91dd75ea: address(arg1), arg2, arg3
                                                                                else:
                                                                                    mem[mem[64] + 4] = address(_1556)
                                                                                    mem[mem[64] + 36] = msg.sender
                                                                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                                            gas gas_remaining wei
                                                                                           args address(_1556), msg.sender
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _4256 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        require mem[_4256] == bool(mem[_4256])
                                                                                        if not mem[_4256]:
                                                                                            revert with 0, 'You must be owner or approved for this summoner'
                                                                                        else:
                                                                                            _5092 = mem[64]
                                                                                            mem[64] = mem[64] + 64
                                                                                            mem[_5092] = 57005
                                                                                            mem[_5092 + 32] = 0
                                                                                            _5093 = mem[64]
                                                                                            mem[64] = mem[64] + 64
                                                                                            mem[_5093] = arg1
                                                                                            mem[_5093 + 32] = arg2
                                                                                            mem[mem[64] + 4] = arg1
                                                                                            mem[mem[64] + 36] = arg2
                                                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                                    gas gas_remaining wei
                                                                                                   args address(arg1), arg2
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _5666 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                require mem[_5666] == mem[_5666]
                                                                                                mem[0] = mem[_5666]
                                                                                                mem[0] = stor2[mem[0]]
                                                                                                mem[32] = 1
                                                                                                stor1[mem[0]].field_0 = 57005
                                                                                                stor1[mem[0]].field_16 = 0
                                                                                                stor1[mem[0]].field_256 = 0
                                                                                                _5979 = mem[64]
                                                                                                mem[64] = mem[64] + 64
                                                                                                mem[_5979] = arg1
                                                                                                mem[_5979 + 32] = arg2
                                                                                                mem[mem[64] + 4] = arg1
                                                                                                mem[mem[64] + 36] = arg2
                                                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args address(arg1), arg2
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _6189 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_6189] == mem[_6189]
                                                                                                    mem[0] = mem[_6189]
                                                                                                    stor2[mem[0]] = arg3
                                                                                                    stor1[arg3].field_0 = arg1
                                                                                                    stor1[arg3].field_256 = arg2
                                                                                                    emit 0x91dd75ea: address(arg1), arg2, arg3
                            else:
                                if not return_data.size:
                                    require ext_code.size(arg1)
                                    staticcall arg1.ownerOf(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if msg.sender == ext_call.return_data[12 len 20]:
                                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                if msg.sender == ext_call.return_data[12 len 20]:
                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                            gas gas_remaining wei
                                                           args address(arg1), arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                        stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                        stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                gas gas_remaining wei
                                                               args address(arg1), arg2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            stor2[ext_call.return_data[0]] = arg3
                                                            stor1[arg3].field_0 = arg1
                                                            stor1[arg3].field_256 = arg2
                                                            emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                else:
                                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] == msg.sender:
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    stor2[ext_call.return_data[0]] = arg3
                                                                    stor1[arg3].field_0 = arg1
                                                                    stor1[arg3].field_256 = arg2
                                                                    emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                        else:
                                                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                    gas gas_remaining wei
                                                                   args address(ext_call.return_data[0]), msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                if not ext_call.return_data[0]:
                                                                    revert with 0, 'You must be owner or approved for this summoner'
                                                                else:
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                        stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                        stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                gas gas_remaining wei
                                                                               args address(arg1), arg2
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                            stor2[ext_call.return_data[0]] = arg3
                                                                            stor1[arg3].field_0 = arg1
                                                                            stor1[arg3].field_256 = arg2
                                                                            emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                        else:
                                            require ext_code.size(arg1)
                                            staticcall arg1.getApproved(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                if ext_call.return_data[12 len 20] == msg.sender:
                                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if msg.sender == ext_call.return_data[12 len 20]:
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    stor2[ext_call.return_data[0]] = arg3
                                                                    stor1[arg3].field_0 = arg1
                                                                    stor1[arg3].field_256 = arg2
                                                                    emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                        else:
                                                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                                    gas gas_remaining wei
                                                                   args arg3
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                if ext_call.return_data[12 len 20] == msg.sender:
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                        stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                        stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                gas gas_remaining wei
                                                                               args address(arg1), arg2
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                            stor2[ext_call.return_data[0]] = arg3
                                                                            stor1[arg3].field_0 = arg1
                                                                            stor1[arg3].field_256 = arg2
                                                                            emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                                else:
                                                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                            gas gas_remaining wei
                                                                           args address(ext_call.return_data[0]), msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                        if not ext_call.return_data[0]:
                                                                            revert with 0, 'You must be owner or approved for this summoner'
                                                                        else:
                                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(arg1), arg2
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                                stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                                stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                        gas gas_remaining wei
                                                                                       args address(arg1), arg2
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                    stor2[ext_call.return_data[0]] = arg3
                                                                                    stor1[arg3].field_0 = arg1
                                                                                    stor1[arg3].field_256 = arg2
                                                                                    emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                else:
                                                    require ext_code.size(arg1)
                                                    staticcall arg1.isApprovedForAll(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(ext_call.return_data[0]), msg.sender
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            revert with 0, 'You must be owner or approved for this token'
                                                        else:
                                                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                                    gas gas_remaining wei
                                                                   args arg3
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                if msg.sender == ext_call.return_data[12 len 20]:
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                        stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                        stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                gas gas_remaining wei
                                                                               args address(arg1), arg2
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                            stor2[ext_call.return_data[0]] = arg3
                                                                            stor1[arg3].field_0 = arg1
                                                                            stor1[arg3].field_256 = arg2
                                                                            emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                                else:
                                                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                                            gas gas_remaining wei
                                                                           args arg3
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                        if ext_call.return_data[12 len 20] == msg.sender:
                                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(arg1), arg2
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                                stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                                stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                        gas gas_remaining wei
                                                                                       args address(arg1), arg2
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                    stor2[ext_call.return_data[0]] = arg3
                                                                                    stor1[arg3].field_0 = arg1
                                                                                    stor1[arg3].field_256 = arg2
                                                                                    emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                                        else:
                                                                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                                    gas gas_remaining wei
                                                                                   args address(ext_call.return_data[0]), msg.sender
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                                if not ext_call.return_data[0]:
                                                                                    revert with 0, 'You must be owner or approved for this summoner'
                                                                                else:
                                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                            gas gas_remaining wei
                                                                                           args address(arg1), arg2
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                        stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                                        stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                                        stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                                gas gas_remaining wei
                                                                                               args address(arg1), arg2
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                            stor2[ext_call.return_data[0]] = arg3
                                                                                            stor1[arg3].field_0 = arg1
                                                                                            stor1[arg3].field_256 = arg2
                                                                                            emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                else:
                                    require ext_code.size(arg1)
                                    staticcall arg1.ownerOf(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if msg.sender == ext_call.return_data[12 len 20]:
                                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                if msg.sender == ext_call.return_data[12 len 20]:
                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                            gas gas_remaining wei
                                                           args address(arg1), arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                        stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                        stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                gas gas_remaining wei
                                                               args address(arg1), arg2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            stor2[ext_call.return_data[0]] = arg3
                                                            stor1[arg3].field_0 = arg1
                                                            stor1[arg3].field_256 = arg2
                                                            emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                else:
                                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] == msg.sender:
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    stor2[ext_call.return_data[0]] = arg3
                                                                    stor1[arg3].field_0 = arg1
                                                                    stor1[arg3].field_256 = arg2
                                                                    emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                        else:
                                                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                    gas gas_remaining wei
                                                                   args address(ext_call.return_data[0]), msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                if not ext_call.return_data[0]:
                                                                    revert with 0, 'You must be owner or approved for this summoner'
                                                                else:
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                        stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                        stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                gas gas_remaining wei
                                                                               args address(arg1), arg2
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                            stor2[ext_call.return_data[0]] = arg3
                                                                            stor1[arg3].field_0 = arg1
                                                                            stor1[arg3].field_256 = arg2
                                                                            emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                        else:
                                            require ext_code.size(arg1)
                                            staticcall arg1.getApproved(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                if ext_call.return_data[12 len 20] == msg.sender:
                                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if msg.sender == ext_call.return_data[12 len 20]:
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    stor2[ext_call.return_data[0]] = arg3
                                                                    stor1[arg3].field_0 = arg1
                                                                    stor1[arg3].field_256 = arg2
                                                                    emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                        else:
                                                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                                    gas gas_remaining wei
                                                                   args arg3
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                if ext_call.return_data[12 len 20] == msg.sender:
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                        stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                        stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                gas gas_remaining wei
                                                                               args address(arg1), arg2
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                            stor2[ext_call.return_data[0]] = arg3
                                                                            stor1[arg3].field_0 = arg1
                                                                            stor1[arg3].field_256 = arg2
                                                                            emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                                else:
                                                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                            gas gas_remaining wei
                                                                           args address(ext_call.return_data[0]), msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                        if not ext_call.return_data[0]:
                                                                            revert with 0, 'You must be owner or approved for this summoner'
                                                                        else:
                                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(arg1), arg2
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                                stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                                stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                        gas gas_remaining wei
                                                                                       args address(arg1), arg2
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                    stor2[ext_call.return_data[0]] = arg3
                                                                                    stor1[arg3].field_0 = arg1
                                                                                    stor1[arg3].field_256 = arg2
                                                                                    emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                else:
                                                    require ext_code.size(arg1)
                                                    staticcall arg1.isApprovedForAll(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(ext_call.return_data[0]), msg.sender
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            revert with 0, 'You must be owner or approved for this token'
                                                        else:
                                                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                                    gas gas_remaining wei
                                                                   args arg3
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                if msg.sender == ext_call.return_data[12 len 20]:
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                        stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                        stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                gas gas_remaining wei
                                                                               args address(arg1), arg2
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                            stor2[ext_call.return_data[0]] = arg3
                                                                            stor1[arg3].field_0 = arg1
                                                                            stor1[arg3].field_256 = arg2
                                                                            emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                                else:
                                                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                                            gas gas_remaining wei
                                                                           args arg3
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                        if ext_call.return_data[12 len 20] == msg.sender:
                                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(arg1), arg2
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                                stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                                stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                        gas gas_remaining wei
                                                                                       args address(arg1), arg2
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                    stor2[ext_call.return_data[0]] = arg3
                                                                                    stor1[arg3].field_0 = arg1
                                                                                    stor1[arg3].field_256 = arg2
                                                                                    emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                                        else:
                                                                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                                    gas gas_remaining wei
                                                                                   args address(ext_call.return_data[0]), msg.sender
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                                if not ext_call.return_data[0]:
                                                                                    revert with 0, 'You must be owner or approved for this summoner'
                                                                                else:
                                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                            gas gas_remaining wei
                                                                                           args address(arg1), arg2
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                        stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                                        stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                                        stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                                gas gas_remaining wei
                                                                                               args address(arg1), arg2
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                            stor2[ext_call.return_data[0]] = arg3
                                                                                            stor1[arg3].field_0 = arg1
                                                                                            stor1[arg3].field_256 = arg2
                                                                                            emit 0x91dd75ea: arg1 << 192, arg2, arg3
                        else:
                            if not return_data.size:
                                require ext_code.size(arg1)
                                staticcall arg1.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if msg.sender == ext_call.return_data[12 len 20]:
                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if msg.sender == ext_call.return_data[12 len 20]:
                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                        gas gas_remaining wei
                                                       args address(arg1), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                            gas gas_remaining wei
                                                           args address(arg1), arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        stor2[ext_call.return_data[0]] = arg3
                                                        stor1[arg3].field_0 = arg1
                                                        stor1[arg3].field_256 = arg2
                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                            else:
                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args arg3
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] == msg.sender:
                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                gas gas_remaining wei
                                                               args address(arg1), arg2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor2[ext_call.return_data[0]] = arg3
                                                                stor1[arg3].field_0 = arg1
                                                                stor1[arg3].field_256 = arg2
                                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                    else:
                                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(ext_call.return_data[0]), msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                            if not ext_call.return_data[0]:
                                                                revert with 0, 'You must be owner or approved for this summoner'
                                                            else:
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        stor2[ext_call.return_data[0]] = arg3
                                                                        stor1[arg3].field_0 = arg1
                                                                        stor1[arg3].field_256 = arg2
                                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                    else:
                                        require ext_code.size(arg1)
                                        staticcall arg1.getApproved(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == msg.sender:
                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args arg3
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if msg.sender == ext_call.return_data[12 len 20]:
                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                gas gas_remaining wei
                                                               args address(arg1), arg2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor2[ext_call.return_data[0]] = arg3
                                                                stor1[arg3].field_0 = arg1
                                                                stor1[arg3].field_256 = arg2
                                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                    else:
                                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                                gas gas_remaining wei
                                                               args arg3
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if ext_call.return_data[12 len 20] == msg.sender:
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        stor2[ext_call.return_data[0]] = arg3
                                                                        stor1[arg3].field_0 = arg1
                                                                        stor1[arg3].field_256 = arg2
                                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                            else:
                                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                        gas gas_remaining wei
                                                                       args address(ext_call.return_data[0]), msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                    if not ext_call.return_data[0]:
                                                                        revert with 0, 'You must be owner or approved for this summoner'
                                                                    else:
                                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                gas gas_remaining wei
                                                                               args address(arg1), arg2
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(arg1), arg2
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                stor2[ext_call.return_data[0]] = arg3
                                                                                stor1[arg3].field_0 = arg1
                                                                                stor1[arg3].field_256 = arg2
                                                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                            else:
                                                require ext_code.size(arg1)
                                                staticcall arg1.isApprovedForAll(address arg1, address arg2) with:
                                                        gas gas_remaining wei
                                                       args address(ext_call.return_data[0]), msg.sender
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    if not ext_call.return_data[0]:
                                                        revert with 0, 'You must be owner or approved for this token'
                                                    else:
                                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                                gas gas_remaining wei
                                                               args arg3
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if msg.sender == ext_call.return_data[12 len 20]:
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        stor2[ext_call.return_data[0]] = arg3
                                                                        stor1[arg3].field_0 = arg1
                                                                        stor1[arg3].field_256 = arg2
                                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                            else:
                                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                                        gas gas_remaining wei
                                                                       args arg3
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                    if ext_call.return_data[12 len 20] == msg.sender:
                                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                gas gas_remaining wei
                                                                               args address(arg1), arg2
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(arg1), arg2
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                stor2[ext_call.return_data[0]] = arg3
                                                                                stor1[arg3].field_0 = arg1
                                                                                stor1[arg3].field_256 = arg2
                                                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                                    else:
                                                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                                gas gas_remaining wei
                                                                               args address(ext_call.return_data[0]), msg.sender
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                            if not ext_call.return_data[0]:
                                                                                revert with 0, 'You must be owner or approved for this summoner'
                                                                            else:
                                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                        gas gas_remaining wei
                                                                                       args address(arg1), arg2
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                            gas gas_remaining wei
                                                                                           args address(arg1), arg2
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                        stor2[ext_call.return_data[0]] = arg3
                                                                                        stor1[arg3].field_0 = arg1
                                                                                        stor1[arg3].field_256 = arg2
                                                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                            else:
                                require ext_code.size(arg1)
                                staticcall arg1.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if msg.sender == ext_call.return_data[12 len 20]:
                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if msg.sender == ext_call.return_data[12 len 20]:
                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                        gas gas_remaining wei
                                                       args address(arg1), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                            gas gas_remaining wei
                                                           args address(arg1), arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        stor2[ext_call.return_data[0]] = arg3
                                                        stor1[arg3].field_0 = arg1
                                                        stor1[arg3].field_256 = arg2
                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                            else:
                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args arg3
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] == msg.sender:
                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                gas gas_remaining wei
                                                               args address(arg1), arg2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor2[ext_call.return_data[0]] = arg3
                                                                stor1[arg3].field_0 = arg1
                                                                stor1[arg3].field_256 = arg2
                                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                    else:
                                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(ext_call.return_data[0]), msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                            if not ext_call.return_data[0]:
                                                                revert with 0, 'You must be owner or approved for this summoner'
                                                            else:
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        stor2[ext_call.return_data[0]] = arg3
                                                                        stor1[arg3].field_0 = arg1
                                                                        stor1[arg3].field_256 = arg2
                                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                    else:
                                        require ext_code.size(arg1)
                                        staticcall arg1.getApproved(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == msg.sender:
                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args arg3
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if msg.sender == ext_call.return_data[12 len 20]:
                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                gas gas_remaining wei
                                                               args address(arg1), arg2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor2[ext_call.return_data[0]] = arg3
                                                                stor1[arg3].field_0 = arg1
                                                                stor1[arg3].field_256 = arg2
                                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                    else:
                                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                                gas gas_remaining wei
                                                               args arg3
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if ext_call.return_data[12 len 20] == msg.sender:
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        stor2[ext_call.return_data[0]] = arg3
                                                                        stor1[arg3].field_0 = arg1
                                                                        stor1[arg3].field_256 = arg2
                                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                            else:
                                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                        gas gas_remaining wei
                                                                       args address(ext_call.return_data[0]), msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                    if not ext_call.return_data[0]:
                                                                        revert with 0, 'You must be owner or approved for this summoner'
                                                                    else:
                                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                gas gas_remaining wei
                                                                               args address(arg1), arg2
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(arg1), arg2
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                stor2[ext_call.return_data[0]] = arg3
                                                                                stor1[arg3].field_0 = arg1
                                                                                stor1[arg3].field_256 = arg2
                                                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                            else:
                                                require ext_code.size(arg1)
                                                staticcall arg1.isApprovedForAll(address arg1, address arg2) with:
                                                        gas gas_remaining wei
                                                       args address(ext_call.return_data[0]), msg.sender
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    if not ext_call.return_data[0]:
                                                        revert with 0, 'You must be owner or approved for this token'
                                                    else:
                                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                                gas gas_remaining wei
                                                               args arg3
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if msg.sender == ext_call.return_data[12 len 20]:
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        stor2[ext_call.return_data[0]] = arg3
                                                                        stor1[arg3].field_0 = arg1
                                                                        stor1[arg3].field_256 = arg2
                                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                            else:
                                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                                        gas gas_remaining wei
                                                                       args arg3
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                    if ext_call.return_data[12 len 20] == msg.sender:
                                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                gas gas_remaining wei
                                                                               args address(arg1), arg2
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(arg1), arg2
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                stor2[ext_call.return_data[0]] = arg3
                                                                                stor1[arg3].field_0 = arg1
                                                                                stor1[arg3].field_256 = arg2
                                                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                                    else:
                                                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                                gas gas_remaining wei
                                                                               args address(ext_call.return_data[0]), msg.sender
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                            if not ext_call.return_data[0]:
                                                                                revert with 0, 'You must be owner or approved for this summoner'
                                                                            else:
                                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                        gas gas_remaining wei
                                                                                       args address(arg1), arg2
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                            gas gas_remaining wei
                                                                                           args address(arg1), arg2
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                        stor2[ext_call.return_data[0]] = arg3
                                                                                        stor1[arg3].field_0 = arg1
                                                                                        stor1[arg3].field_256 = arg2
                                                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                    else:
                        if not return_data.size:
                            require ext_code.size(arg1)
                            staticcall arg1.ownerOf(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if msg.sender == ext_call.return_data[12 len 20]:
                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if msg.sender == ext_call.return_data[12 len 20]:
                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                    gas gas_remaining wei
                                                   args address(arg1), arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                        gas gas_remaining wei
                                                       args address(arg1), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                    stor2[ext_call.return_data[0]] = arg3
                                                    stor1[arg3].field_0 = arg1
                                                    stor1[arg3].field_256 = arg2
                                                    emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                        else:
                                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                if ext_call.return_data[12 len 20] == msg.sender:
                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                            gas gas_remaining wei
                                                           args address(arg1), arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                        stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                        stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                gas gas_remaining wei
                                                               args address(arg1), arg2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            stor2[ext_call.return_data[0]] = arg3
                                                            stor1[arg3].field_0 = arg1
                                                            stor1[arg3].field_256 = arg2
                                                            emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                else:
                                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(ext_call.return_data[0]), msg.sender
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            revert with 0, 'You must be owner or approved for this summoner'
                                                        else:
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    stor2[ext_call.return_data[0]] = arg3
                                                                    stor1[arg3].field_0 = arg1
                                                                    stor1[arg3].field_256 = arg2
                                                                    emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                else:
                                    require ext_code.size(arg1)
                                    staticcall arg1.getApproved(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if ext_call.return_data[12 len 20] == msg.sender:
                                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                if msg.sender == ext_call.return_data[12 len 20]:
                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                            gas gas_remaining wei
                                                           args address(arg1), arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                        stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                        stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                gas gas_remaining wei
                                                               args address(arg1), arg2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            stor2[ext_call.return_data[0]] = arg3
                                                            stor1[arg3].field_0 = arg1
                                                            stor1[arg3].field_256 = arg2
                                                            emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                else:
                                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] == msg.sender:
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    stor2[ext_call.return_data[0]] = arg3
                                                                    stor1[arg3].field_0 = arg1
                                                                    stor1[arg3].field_256 = arg2
                                                                    emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                        else:
                                                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                    gas gas_remaining wei
                                                                   args address(ext_call.return_data[0]), msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                if not ext_call.return_data[0]:
                                                                    revert with 0, 'You must be owner or approved for this summoner'
                                                                else:
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                        stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                        stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                gas gas_remaining wei
                                                                               args address(arg1), arg2
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                            stor2[ext_call.return_data[0]] = arg3
                                                                            stor1[arg3].field_0 = arg1
                                                                            stor1[arg3].field_256 = arg2
                                                                            emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                        else:
                                            require ext_code.size(arg1)
                                            staticcall arg1.isApprovedForAll(address arg1, address arg2) with:
                                                    gas gas_remaining wei
                                                   args address(ext_call.return_data[0]), msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'You must be owner or approved for this token'
                                                else:
                                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if msg.sender == ext_call.return_data[12 len 20]:
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    stor2[ext_call.return_data[0]] = arg3
                                                                    stor1[arg3].field_0 = arg1
                                                                    stor1[arg3].field_256 = arg2
                                                                    emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                        else:
                                                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                                    gas gas_remaining wei
                                                                   args arg3
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                if ext_call.return_data[12 len 20] == msg.sender:
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                        stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                        stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                gas gas_remaining wei
                                                                               args address(arg1), arg2
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                            stor2[ext_call.return_data[0]] = arg3
                                                                            stor1[arg3].field_0 = arg1
                                                                            stor1[arg3].field_256 = arg2
                                                                            emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                                else:
                                                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                            gas gas_remaining wei
                                                                           args address(ext_call.return_data[0]), msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                        if not ext_call.return_data[0]:
                                                                            revert with 0, 'You must be owner or approved for this summoner'
                                                                        else:
                                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(arg1), arg2
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                                stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                                stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                        gas gas_remaining wei
                                                                                       args address(arg1), arg2
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                    stor2[ext_call.return_data[0]] = arg3
                                                                                    stor1[arg3].field_0 = arg1
                                                                                    stor1[arg3].field_256 = arg2
                                                                                    emit 0x91dd75ea: arg1 << 192, arg2, arg3
                        else:
                            require ext_code.size(arg1)
                            staticcall arg1.ownerOf(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if msg.sender == ext_call.return_data[12 len 20]:
                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if msg.sender == ext_call.return_data[12 len 20]:
                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                    gas gas_remaining wei
                                                   args address(arg1), arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                        gas gas_remaining wei
                                                       args address(arg1), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                    stor2[ext_call.return_data[0]] = arg3
                                                    stor1[arg3].field_0 = arg1
                                                    stor1[arg3].field_256 = arg2
                                                    emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                        else:
                                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                if ext_call.return_data[12 len 20] == msg.sender:
                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                            gas gas_remaining wei
                                                           args address(arg1), arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                        stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                        stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                gas gas_remaining wei
                                                               args address(arg1), arg2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            stor2[ext_call.return_data[0]] = arg3
                                                            stor1[arg3].field_0 = arg1
                                                            stor1[arg3].field_256 = arg2
                                                            emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                else:
                                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(ext_call.return_data[0]), msg.sender
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            revert with 0, 'You must be owner or approved for this summoner'
                                                        else:
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    stor2[ext_call.return_data[0]] = arg3
                                                                    stor1[arg3].field_0 = arg1
                                                                    stor1[arg3].field_256 = arg2
                                                                    emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                else:
                                    require ext_code.size(arg1)
                                    staticcall arg1.getApproved(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if ext_call.return_data[12 len 20] == msg.sender:
                                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                if msg.sender == ext_call.return_data[12 len 20]:
                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                            gas gas_remaining wei
                                                           args address(arg1), arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                        stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                        stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                gas gas_remaining wei
                                                               args address(arg1), arg2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            stor2[ext_call.return_data[0]] = arg3
                                                            stor1[arg3].field_0 = arg1
                                                            stor1[arg3].field_256 = arg2
                                                            emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                else:
                                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] == msg.sender:
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    stor2[ext_call.return_data[0]] = arg3
                                                                    stor1[arg3].field_0 = arg1
                                                                    stor1[arg3].field_256 = arg2
                                                                    emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                        else:
                                                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                    gas gas_remaining wei
                                                                   args address(ext_call.return_data[0]), msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                if not ext_call.return_data[0]:
                                                                    revert with 0, 'You must be owner or approved for this summoner'
                                                                else:
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                        stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                        stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                gas gas_remaining wei
                                                                               args address(arg1), arg2
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                            stor2[ext_call.return_data[0]] = arg3
                                                                            stor1[arg3].field_0 = arg1
                                                                            stor1[arg3].field_256 = arg2
                                                                            emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                        else:
                                            require ext_code.size(arg1)
                                            staticcall arg1.isApprovedForAll(address arg1, address arg2) with:
                                                    gas gas_remaining wei
                                                   args address(ext_call.return_data[0]), msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'You must be owner or approved for this token'
                                                else:
                                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                            gas gas_remaining wei
                                                           args arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if msg.sender == ext_call.return_data[12 len 20]:
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    stor2[ext_call.return_data[0]] = arg3
                                                                    stor1[arg3].field_0 = arg1
                                                                    stor1[arg3].field_256 = arg2
                                                                    emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                        else:
                                                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                                    gas gas_remaining wei
                                                                   args arg3
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                if ext_call.return_data[12 len 20] == msg.sender:
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                        stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                        stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                gas gas_remaining wei
                                                                               args address(arg1), arg2
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                            stor2[ext_call.return_data[0]] = arg3
                                                                            stor1[arg3].field_0 = arg1
                                                                            stor1[arg3].field_256 = arg2
                                                                            emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                                else:
                                                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                            gas gas_remaining wei
                                                                           args address(ext_call.return_data[0]), msg.sender
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                        if not ext_call.return_data[0]:
                                                                            revert with 0, 'You must be owner or approved for this summoner'
                                                                        else:
                                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(arg1), arg2
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                                stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                                stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                        gas gas_remaining wei
                                                                                       args address(arg1), arg2
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                    stor2[ext_call.return_data[0]] = arg3
                                                                                    stor1[arg3].field_0 = arg1
                                                                                    stor1[arg3].field_256 = arg2
                                                                                    emit 0x91dd75ea: arg1 << 192, arg2, arg3
                else:
                    if not return_data.size:
                        require ext_code.size(arg1)
                        staticcall arg1.ownerOf(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if msg.sender == ext_call.return_data[12 len 20]:
                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if msg.sender == ext_call.return_data[12 len 20]:
                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                gas gas_remaining wei
                                               args address(arg1), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                    gas gas_remaining wei
                                                   args address(arg1), arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                stor2[ext_call.return_data[0]] = arg3
                                                stor1[arg3].field_0 = arg1
                                                stor1[arg3].field_256 = arg2
                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                    else:
                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == msg.sender:
                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                        gas gas_remaining wei
                                                       args address(arg1), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                            gas gas_remaining wei
                                                           args address(arg1), arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        stor2[ext_call.return_data[0]] = arg3
                                                        stor1[arg3].field_0 = arg1
                                                        stor1[arg3].field_256 = arg2
                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                            else:
                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                        gas gas_remaining wei
                                                       args address(ext_call.return_data[0]), msg.sender
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    if not ext_call.return_data[0]:
                                                        revert with 0, 'You must be owner or approved for this summoner'
                                                    else:
                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                gas gas_remaining wei
                                                               args address(arg1), arg2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor2[ext_call.return_data[0]] = arg3
                                                                stor1[arg3].field_0 = arg1
                                                                stor1[arg3].field_256 = arg2
                                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                            else:
                                require ext_code.size(arg1)
                                staticcall arg1.getApproved(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if ext_call.return_data[12 len 20] == msg.sender:
                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if msg.sender == ext_call.return_data[12 len 20]:
                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                        gas gas_remaining wei
                                                       args address(arg1), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                            gas gas_remaining wei
                                                           args address(arg1), arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        stor2[ext_call.return_data[0]] = arg3
                                                        stor1[arg3].field_0 = arg1
                                                        stor1[arg3].field_256 = arg2
                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                            else:
                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args arg3
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] == msg.sender:
                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                gas gas_remaining wei
                                                               args address(arg1), arg2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor2[ext_call.return_data[0]] = arg3
                                                                stor1[arg3].field_0 = arg1
                                                                stor1[arg3].field_256 = arg2
                                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                    else:
                                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(ext_call.return_data[0]), msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                            if not ext_call.return_data[0]:
                                                                revert with 0, 'You must be owner or approved for this summoner'
                                                            else:
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        stor2[ext_call.return_data[0]] = arg3
                                                                        stor1[arg3].field_0 = arg1
                                                                        stor1[arg3].field_256 = arg2
                                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                    else:
                                        require ext_code.size(arg1)
                                        staticcall arg1.isApprovedForAll(address arg1, address arg2) with:
                                                gas gas_remaining wei
                                               args address(ext_call.return_data[0]), msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'You must be owner or approved for this token'
                                            else:
                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args arg3
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if msg.sender == ext_call.return_data[12 len 20]:
                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                gas gas_remaining wei
                                                               args address(arg1), arg2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor2[ext_call.return_data[0]] = arg3
                                                                stor1[arg3].field_0 = arg1
                                                                stor1[arg3].field_256 = arg2
                                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                    else:
                                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                                gas gas_remaining wei
                                                               args arg3
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if ext_call.return_data[12 len 20] == msg.sender:
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        stor2[ext_call.return_data[0]] = arg3
                                                                        stor1[arg3].field_0 = arg1
                                                                        stor1[arg3].field_256 = arg2
                                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                            else:
                                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                        gas gas_remaining wei
                                                                       args address(ext_call.return_data[0]), msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                    if not ext_call.return_data[0]:
                                                                        revert with 0, 'You must be owner or approved for this summoner'
                                                                    else:
                                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                gas gas_remaining wei
                                                                               args address(arg1), arg2
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(arg1), arg2
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                stor2[ext_call.return_data[0]] = arg3
                                                                                stor1[arg3].field_0 = arg1
                                                                                stor1[arg3].field_256 = arg2
                                                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.ownerOf(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if msg.sender == ext_call.return_data[12 len 20]:
                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if msg.sender == ext_call.return_data[12 len 20]:
                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                gas gas_remaining wei
                                               args address(arg1), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                    gas gas_remaining wei
                                                   args address(arg1), arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                stor2[ext_call.return_data[0]] = arg3
                                                stor1[arg3].field_0 = arg1
                                                stor1[arg3].field_256 = arg2
                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                    else:
                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == msg.sender:
                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                        gas gas_remaining wei
                                                       args address(arg1), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                            gas gas_remaining wei
                                                           args address(arg1), arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        stor2[ext_call.return_data[0]] = arg3
                                                        stor1[arg3].field_0 = arg1
                                                        stor1[arg3].field_256 = arg2
                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                            else:
                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                        gas gas_remaining wei
                                                       args address(ext_call.return_data[0]), msg.sender
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    if not ext_call.return_data[0]:
                                                        revert with 0, 'You must be owner or approved for this summoner'
                                                    else:
                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                gas gas_remaining wei
                                                               args address(arg1), arg2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor2[ext_call.return_data[0]] = arg3
                                                                stor1[arg3].field_0 = arg1
                                                                stor1[arg3].field_256 = arg2
                                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                            else:
                                require ext_code.size(arg1)
                                staticcall arg1.getApproved(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if ext_call.return_data[12 len 20] == msg.sender:
                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if msg.sender == ext_call.return_data[12 len 20]:
                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                        gas gas_remaining wei
                                                       args address(arg1), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                            gas gas_remaining wei
                                                           args address(arg1), arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        stor2[ext_call.return_data[0]] = arg3
                                                        stor1[arg3].field_0 = arg1
                                                        stor1[arg3].field_256 = arg2
                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                            else:
                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args arg3
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] == msg.sender:
                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                gas gas_remaining wei
                                                               args address(arg1), arg2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor2[ext_call.return_data[0]] = arg3
                                                                stor1[arg3].field_0 = arg1
                                                                stor1[arg3].field_256 = arg2
                                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                    else:
                                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(ext_call.return_data[0]), msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                            if not ext_call.return_data[0]:
                                                                revert with 0, 'You must be owner or approved for this summoner'
                                                            else:
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        stor2[ext_call.return_data[0]] = arg3
                                                                        stor1[arg3].field_0 = arg1
                                                                        stor1[arg3].field_256 = arg2
                                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                    else:
                                        require ext_code.size(arg1)
                                        staticcall arg1.isApprovedForAll(address arg1, address arg2) with:
                                                gas gas_remaining wei
                                               args address(ext_call.return_data[0]), msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'You must be owner or approved for this token'
                                            else:
                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args arg3
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if msg.sender == ext_call.return_data[12 len 20]:
                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                gas gas_remaining wei
                                                               args address(arg1), arg2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor2[ext_call.return_data[0]] = arg3
                                                                stor1[arg3].field_0 = arg1
                                                                stor1[arg3].field_256 = arg2
                                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                    else:
                                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                                gas gas_remaining wei
                                                               args arg3
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if ext_call.return_data[12 len 20] == msg.sender:
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        stor2[ext_call.return_data[0]] = arg3
                                                                        stor1[arg3].field_0 = arg1
                                                                        stor1[arg3].field_256 = arg2
                                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                            else:
                                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                        gas gas_remaining wei
                                                                       args address(ext_call.return_data[0]), msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                    if not ext_call.return_data[0]:
                                                                        revert with 0, 'You must be owner or approved for this summoner'
                                                                    else:
                                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                gas gas_remaining wei
                                                                               args address(arg1), arg2
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(arg1), arg2
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                stor2[ext_call.return_data[0]] = arg3
                                                                                stor1[arg3].field_0 = arg1
                                                                                stor1[arg3].field_256 = arg2
                                                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
    else:
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            require ext_code.size(arg1)
            staticcall arg1.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if msg.sender == ext_call.return_data[12 len 20]:
                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if msg.sender == ext_call.return_data[12 len 20]:
                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                    gas gas_remaining wei
                                   args address(arg1), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                        gas gas_remaining wei
                                       args address(arg1), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    stor2[ext_call.return_data[0]] = arg3
                                    stor1[arg3].field_0 = arg1
                                    stor1[arg3].field_256 = arg2
                                    emit 0x91dd75ea: arg1 << 192, arg2, arg3
                        else:
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if ext_call.return_data[12 len 20] == msg.sender:
                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                            gas gas_remaining wei
                                           args address(arg1), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                        stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                        stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                gas gas_remaining wei
                                               args address(arg1), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                            stor2[ext_call.return_data[0]] = arg3
                                            stor1[arg3].field_0 = arg1
                                            stor1[arg3].field_256 = arg2
                                            emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                else:
                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(ext_call.return_data[0]), msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'You must be owner or approved for this summoner'
                                        else:
                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                    gas gas_remaining wei
                                                   args address(arg1), arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                        gas gas_remaining wei
                                                       args address(arg1), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                    stor2[ext_call.return_data[0]] = arg3
                                                    stor1[arg3].field_0 = arg1
                                                    stor1[arg3].field_256 = arg2
                                                    emit 0x91dd75ea: arg1 << 192, arg2, arg3
                else:
                    require ext_code.size(arg1)
                    staticcall arg1.getApproved(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] == msg.sender:
                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if msg.sender == ext_call.return_data[12 len 20]:
                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                            gas gas_remaining wei
                                           args address(arg1), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                        stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                        stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                gas gas_remaining wei
                                               args address(arg1), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                            stor2[ext_call.return_data[0]] = arg3
                                            stor1[arg3].field_0 = arg1
                                            stor1[arg3].field_256 = arg2
                                            emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                else:
                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if ext_call.return_data[12 len 20] == msg.sender:
                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                    gas gas_remaining wei
                                                   args address(arg1), arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                        gas gas_remaining wei
                                                       args address(arg1), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                    stor2[ext_call.return_data[0]] = arg3
                                                    stor1[arg3].field_0 = arg1
                                                    stor1[arg3].field_256 = arg2
                                                    emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                        else:
                                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                    gas gas_remaining wei
                                                   args address(ext_call.return_data[0]), msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'You must be owner or approved for this summoner'
                                                else:
                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                            gas gas_remaining wei
                                                           args address(arg1), arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                        stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                        stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                gas gas_remaining wei
                                                               args address(arg1), arg2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            stor2[ext_call.return_data[0]] = arg3
                                                            stor1[arg3].field_0 = arg1
                                                            stor1[arg3].field_256 = arg2
                                                            emit 0x91dd75ea: arg1 << 192, arg2, arg3
                        else:
                            require ext_code.size(arg1)
                            staticcall arg1.isApprovedForAll(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0]), msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'You must be owner or approved for this token'
                                else:
                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if msg.sender == ext_call.return_data[12 len 20]:
                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                    gas gas_remaining wei
                                                   args address(arg1), arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                        gas gas_remaining wei
                                                       args address(arg1), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                    stor2[ext_call.return_data[0]] = arg3
                                                    stor1[arg3].field_0 = arg1
                                                    stor1[arg3].field_256 = arg2
                                                    emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                        else:
                                            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                if ext_call.return_data[12 len 20] == msg.sender:
                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                            gas gas_remaining wei
                                                           args address(arg1), arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                        stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                        stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                gas gas_remaining wei
                                                               args address(arg1), arg2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            stor2[ext_call.return_data[0]] = arg3
                                                            stor1[arg3].field_0 = arg1
                                                            stor1[arg3].field_256 = arg2
                                                            emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                else:
                                                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                            gas gas_remaining wei
                                                           args address(ext_call.return_data[0]), msg.sender
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            revert with 0, 'You must be owner or approved for this summoner'
                                                        else:
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    stor2[ext_call.return_data[0]] = arg3
                                                                    stor1[arg3].field_0 = arg1
                                                                    stor1[arg3].field_256 = arg2
                                                                    emit 0x91dd75ea: arg1 << 192, arg2, arg3
        else:
            require ext_code.size(arg1)
            call arg1.class(uint256 arg1) with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.class(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'Summoner and skin must be of the same class'
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.ownerOf(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if msg.sender == ext_call.return_data[12 len 20]:
                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if msg.sender == ext_call.return_data[12 len 20]:
                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                gas gas_remaining wei
                                               args address(arg1), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                    gas gas_remaining wei
                                                   args address(arg1), arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                stor2[ext_call.return_data[0]] = arg3
                                                stor1[arg3].field_0 = arg1
                                                stor1[arg3].field_256 = arg2
                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                    else:
                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == msg.sender:
                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                        gas gas_remaining wei
                                                       args address(arg1), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                            gas gas_remaining wei
                                                           args address(arg1), arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        stor2[ext_call.return_data[0]] = arg3
                                                        stor1[arg3].field_0 = arg1
                                                        stor1[arg3].field_256 = arg2
                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                            else:
                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                        gas gas_remaining wei
                                                       args address(ext_call.return_data[0]), msg.sender
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    if not ext_call.return_data[0]:
                                                        revert with 0, 'You must be owner or approved for this summoner'
                                                    else:
                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                gas gas_remaining wei
                                                               args address(arg1), arg2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor2[ext_call.return_data[0]] = arg3
                                                                stor1[arg3].field_0 = arg1
                                                                stor1[arg3].field_256 = arg2
                                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                            else:
                                require ext_code.size(arg1)
                                staticcall arg1.getApproved(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if ext_call.return_data[12 len 20] == msg.sender:
                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if msg.sender == ext_call.return_data[12 len 20]:
                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                        gas gas_remaining wei
                                                       args address(arg1), arg2
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                            gas gas_remaining wei
                                                           args address(arg1), arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                        stor2[ext_call.return_data[0]] = arg3
                                                        stor1[arg3].field_0 = arg1
                                                        stor1[arg3].field_256 = arg2
                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                            else:
                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args arg3
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] == msg.sender:
                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                gas gas_remaining wei
                                                               args address(arg1), arg2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor2[ext_call.return_data[0]] = arg3
                                                                stor1[arg3].field_0 = arg1
                                                                stor1[arg3].field_256 = arg2
                                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                    else:
                                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                gas gas_remaining wei
                                                               args address(ext_call.return_data[0]), msg.sender
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                            if not ext_call.return_data[0]:
                                                                revert with 0, 'You must be owner or approved for this summoner'
                                                            else:
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        stor2[ext_call.return_data[0]] = arg3
                                                                        stor1[arg3].field_0 = arg1
                                                                        stor1[arg3].field_256 = arg2
                                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                    else:
                                        require ext_code.size(arg1)
                                        staticcall arg1.isApprovedForAll(address arg1, address arg2) with:
                                                gas gas_remaining wei
                                               args address(ext_call.return_data[0]), msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'You must be owner or approved for this token'
                                            else:
                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args arg3
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if msg.sender == ext_call.return_data[12 len 20]:
                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                gas gas_remaining wei
                                                               args address(arg1), arg2
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                    gas gas_remaining wei
                                                                   args address(arg1), arg2
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                stor2[ext_call.return_data[0]] = arg3
                                                                stor1[arg3].field_0 = arg1
                                                                stor1[arg3].field_256 = arg2
                                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                    else:
                                                        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                                                                gas gas_remaining wei
                                                               args arg3
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if ext_call.return_data[12 len 20] == msg.sender:
                                                                require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                        gas gas_remaining wei
                                                                       args address(arg1), arg2
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                    stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                    stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                    stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                    require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                    staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1), arg2
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                                                        stor2[ext_call.return_data[0]] = arg3
                                                                        stor1[arg3].field_0 = arg1
                                                                        stor1[arg3].field_256 = arg2
                                                                        emit 0x91dd75ea: arg1 << 192, arg2, arg3
                                                            else:
                                                                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                                                                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                                                                        gas gas_remaining wei
                                                                       args address(ext_call.return_data[0]), msg.sender
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                    if not ext_call.return_data[0]:
                                                                        revert with 0, 'You must be owner or approved for this summoner'
                                                                    else:
                                                                        require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                        staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                gas gas_remaining wei
                                                                               args address(arg1), arg2
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                            stor1[stor2[ext_call.return_data[0]]].field_0 = 57005
                                                                            stor1[stor2[ext_call.return_data[0]]].field_16 = 0
                                                                            stor1[stor2[ext_call.return_data[0]]].field_256 = 0
                                                                            require ext_code.size(0xd1447fe5e70d58204946d61224643738ba54f5cc)
                                                                            staticcall 0xd1447fe5e70d58204946d61224643738ba54f5cc.0x5d98f434 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(arg1), arg2
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                stor2[ext_call.return_data[0]] = arg3
                                                                                stor1[arg3].field_0 = arg1
                                                                                stor1[arg3].field_256 = arg2
                                                                                emit 0x91dd75ea: arg1 << 192, arg2, arg3
}



}
