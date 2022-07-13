contract main {




// =====================  Runtime code  =====================


const name = 32, 33, 0xfe52617269747920486f6d65737465616420477261737320536d616c6c2047616d, mem[161 len 31] / 0.00390625, 0


mapping of uint256 allowance;
mapping of uint8 stor1;
uint256 totalSupply;
mapping of uint8 sub_4aa5d159;
mapping of uint256 sub_0331f1ef;
mapping of uint256 balanceOf;

function sub_0331f1ef(?) payable {
    require calldata.size - 4 >= 32
    return sub_0331f1ef[arg1]
}

function totalSupply() payable {
    return totalSupply
}

function sub_4aa5d159(?) payable {
    require calldata.size - 4 >= 32
    return sub_4aa5d159[arg1]
}

function sub_51708922(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function balanceOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function allowance(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function approve(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Is not approved'
    allowance[arg1][arg2] = arg3
    emit Approval(arg3, arg1, arg2);
    return 1
}

function sub_e4a0d1b7(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_call.return_data[0]
    if balanceOf[arg1] < arg2:
        revert with 0, 17
    balanceOf[arg1] -= arg2
    if totalSupply < arg2:
        revert with 0, 17
    totalSupply -= arg2
    emit 0xcc436e92: arg2, arg1
}

function transfer(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_call.return_data[0]
    if balanceOf[arg1] < arg3:
        revert with 0, 17
    balanceOf[arg1] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_477bb996(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_call.return_data[0]
    if sub_4aa5d159[arg1] < sub_4aa5d159[arg1]:
        revert with 0, 17
    sub_4aa5d159[arg1] = 0
    if sub_4aa5d159[arg2] > -sub_4aa5d159[arg1] + 255:
        revert with 0, 17
    sub_4aa5d159[arg2] = uint8(sub_4aa5d159[arg1] + sub_4aa5d159[arg2])
    emit 0xdec9affb: arg1, arg2
}

function transferFrom(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_call.return_data[0]
    if arg2 != arg1:
        if allowance[arg2][arg1] != -1:
            if allowance[arg2][arg1] < arg4:
                revert with 0, 17
            allowance[arg2][arg1] -= arg4
            emit Approval((allowance[arg2][arg1] - arg4), arg2, arg1);
    if balanceOf[arg2] < arg4:
        revert with 0, 17
    balanceOf[arg2] -= arg4
    if balanceOf[arg3] > !arg4:
        revert with 0, 17
    balanceOf[arg3] += arg4
    emit Transfer(arg4, arg2, arg3);
    return 1
}

function sub_3ceb600e(?) payable {
    require calldata.size - 4 >= 96
    require arg3 == bool(arg3)
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Not your summoner'
    require ext_code.size(0xef86d4ba2a6bd9038a2acee23155fbc64f530e55)
    staticcall 0xef86d4ba2a6bd9038a2acee23155fbc64f530e55.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 != ext_call.return_data[0]:
        revert with 0, 'Not your plot'
    stor1[arg2] = uint8(bool(arg3))
    emit 0xce32baec: bool(arg3), arg1, arg2
}

function sub_858ffc23(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
    staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.ability_scores(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require ext_call.return_data[0] == ext_call.return_data[28 len 4]
    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    require ext_call.return_data[128] == ext_call.return_data[156 len 4]
    require ext_call.return_data[160] == ext_call.return_data[188 len 4]
    require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
    staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 1 > !ext_call.return_data[0]:
        revert with 0, 17
    if 9 == uint32(ext_call.return_data[96]):
        if ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))) >= 0 and -1 > -('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))) + 127:
            revert with 0, 17
        if ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))) < 0 and -1 < -('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))) - 128:
            revert with 0, 17
        if ('signextend', 0, ('add', -1, ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))) >= 0 and ('signextend', 0, ('param', 'arg2')) > -('signextend', 0, ('add', -1, ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))) + 127:
            revert with 0, 17
        if ('signextend', 0, ('add', -1, ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))) < 0 and ('signextend', 0, ('param', 'arg2')) < -('signextend', 0, ('add', -1, ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))) - 128:
            revert with 0, 17
        if ('signextend', 0, ('add', ('signextend', 0, ('param', 'arg2')), ('signextend', 0, ('add', -1, ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))))) > 14:
            return 10
        if ('signextend', 0, ('add', ('signextend', 0, ('param', 'arg2')), ('signextend', 0, ('add', -1, ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))))) > 10:
            return 8
        if ('signextend', 0, ('add', ('signextend', 0, ('param', 'arg2')), ('signextend', 0, ('add', -1, ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))))) <= 6:
            return 4
    else:
        if ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))) < -118:
            revert with 0, 17
        if ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))) >= 0 and ('signextend', 0, ('sdiv', ('signextend', 0, ('add', -10, ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))))), 2)) > -('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))) + 127:
            revert with 0, 17
        if ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))) < 0 and ('signextend', 0, ('sdiv', ('signextend', 0, ('add', -10, ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))))), 2)) < -('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))) - 128:
            revert with 0, 17
        if ('signextend', 0, ('add', ('signextend', 0, ('sdiv', ('signextend', 0, ('add', -10, ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))))), 2)), ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))) >= 0 and ('signextend', 0, ('param', 'arg2')) > -('signextend', 0, ('add', ('signextend', 0, ('sdiv', ('signextend', 0, ('add', -10, ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))))), 2)), ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))) + 127:
            revert with 0, 17
        if ('signextend', 0, ('add', ('signextend', 0, ('sdiv', ('signextend', 0, ('add', -10, ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))))), 2)), ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))) < 0 and ('signextend', 0, ('param', 'arg2')) < -('signextend', 0, ('add', ('signextend', 0, ('sdiv', ('signextend', 0, ('add', -10, ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))))), 2)), ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))) - 128:
            revert with 0, 17
        if ('signextend', 0, ('add', ('signextend', 0, ('param', 'arg2')), ('signextend', 0, ('add', ('signextend', 0, ('sdiv', ('signextend', 0, ('add', -10, ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))))), 2)), ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))))) > 14:
            return 10
        if ('signextend', 0, ('add', ('signextend', 0, ('param', 'arg2')), ('signextend', 0, ('add', ('signextend', 0, ('sdiv', ('signextend', 0, ('add', -10, ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))))), 2)), ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))))) > 10:
            return 8
        if ('signextend', 0, ('add', ('signextend', 0, ('param', 'arg2')), ('signextend', 0, ('add', ('signextend', 0, ('sdiv', ('signextend', 0, ('add', -10, ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))))), 2)), ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))))) <= 6:
            return 4
    return 6
}

function hunt(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Not your summoner'
    require ext_code.size(0xef86d4ba2a6bd9038a2acee23155fbc64f530e55)
    staticcall 0xef86d4ba2a6bd9038a2acee23155fbc64f530e55.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != arg1:
        if stor1[arg2]:
            revert with 0, 'Not farmable'
    if not sub_4aa5d159[arg1]:
        revert with 0, 'Need a useful tool'
    if block.timestamp <= sub_0331f1ef[arg2]:
        revert with 0, 'Plot is barren'
    require ext_code.size(0xef86d4ba2a6bd9038a2acee23155fbc64f530e55)
    staticcall 0xef86d4ba2a6bd9038a2acee23155fbc64f530e55.0xc588ff8b with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[16 len 16]
    if ext_call.return_data[31 len 1] != 2:
        revert with 0, 'Small game are only found on grass land'
    require ext_code.size(0xef86d4ba2a6bd9038a2acee23155fbc64f530e55)
    staticcall 0xef86d4ba2a6bd9038a2acee23155fbc64f530e55.plots(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require ext_call.return_data[0] == ('signextend', 15, ('ext_call.return_data', 0, 32))
    require ext_call.return_data[32] == ('signextend', 15, ('ext_call.return_data', 32, 32))
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    require ext_call.return_data[128] == ext_call.return_data[144 len 16]
    require ext_call.return_data[160] == bool(ext_call.return_data[160])
    if ext_call.return_data[144 len 16] <= 9:
        revert with 0, 'Not high enough quality'
    if sub_4aa5d159[arg1] < 1:
        revert with 0, 17
    sub_4aa5d159[arg1] = uint8(sub_4aa5d159[arg1] - 1)
    if block.timestamp > -43201:
        revert with 0, 17
    sub_0331f1ef[arg2] = block.timestamp + (12 * 3600)
    require ext_code.size(0x408ce6feb12e41eb6b71fa97fe7b15fcb697b529)
    staticcall 0x408ce6feb12e41eb6b71fa97fe7b15fcb697b529.0xfe494739 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 8:
        if uint128(ext_call.return_data[128]) > 29:
            if ext_call.return_data[0] == arg1:
                if totalSupply > -6:
                    revert with 0, 17
                totalSupply += 5
                if balanceOf[arg1] > -6:
                    revert with 0, 17
                balanceOf[arg1] += 5
                emit Transfer(5, arg1, arg1);
            else:
                if totalSupply > -5:
                    revert with 0, 17
                totalSupply += 4
                if balanceOf[arg1] > -5:
                    revert with 0, 17
                balanceOf[arg1] += 4
                emit Transfer(4, arg1, arg1);
                if totalSupply > -2:
                    revert with 0, 17
                totalSupply++
                if balanceOf[ext_call.return_data[0]] > -2:
                    revert with 0, 17
                balanceOf[ext_call.return_data[0]]++
                emit Transfer(1, ext_call.return_data[0], ext_call.return_data[0]);
        else:
            if uint128(ext_call.return_data[128]) > 24:
                if ext_call.return_data[0] == arg1:
                    if totalSupply > -5:
                        revert with 0, 17
                    totalSupply += 4
                    if balanceOf[arg1] > -5:
                        revert with 0, 17
                    balanceOf[arg1] += 4
                    emit Transfer(4, arg1, arg1);
                else:
                    if totalSupply > -4:
                        revert with 0, 17
                    totalSupply += 3
                    if balanceOf[arg1] > -4:
                        revert with 0, 17
                    balanceOf[arg1] += 3
                    emit Transfer(3, arg1, arg1);
                    if totalSupply > -2:
                        revert with 0, 17
                    totalSupply++
                    if balanceOf[ext_call.return_data[0]] > -2:
                        revert with 0, 17
                    balanceOf[ext_call.return_data[0]]++
                    emit Transfer(1, ext_call.return_data[0], ext_call.return_data[0]);
            else:
                if uint128(ext_call.return_data[128]) > 19:
                    if ext_call.return_data[0] == arg1:
                        if totalSupply > -4:
                            revert with 0, 17
                        totalSupply += 3
                        if balanceOf[arg1] > -4:
                            revert with 0, 17
                        balanceOf[arg1] += 3
                        emit Transfer(3, arg1, arg1);
                    else:
                        if totalSupply > -3:
                            revert with 0, 17
                        totalSupply += 2
                        if balanceOf[arg1] > -3:
                            revert with 0, 17
                        balanceOf[arg1] += 2
                        emit Transfer(2, arg1, arg1);
                        if totalSupply > -2:
                            revert with 0, 17
                        totalSupply++
                        if balanceOf[ext_call.return_data[0]] > -2:
                            revert with 0, 17
                        balanceOf[ext_call.return_data[0]]++
                        emit Transfer(1, ext_call.return_data[0], ext_call.return_data[0]);
                else:
                    if uint128(ext_call.return_data[128]) <= 14:
                        if totalSupply > -2:
                            revert with 0, 17
                        totalSupply++
                        if balanceOf[arg1] > -2:
                            revert with 0, 17
                        balanceOf[arg1]++
                        emit Transfer(1, arg1, arg1);
                    else:
                        if ext_call.return_data[0] == arg1:
                            if totalSupply > -3:
                                revert with 0, 17
                            totalSupply += 2
                            if balanceOf[arg1] > -3:
                                revert with 0, 17
                            balanceOf[arg1] += 2
                            emit Transfer(2, arg1, arg1);
                        else:
                            if totalSupply > -2:
                                revert with 0, 17
                            totalSupply++
                            if balanceOf[arg1] > -2:
                                revert with 0, 17
                            balanceOf[arg1]++
                            emit Transfer(1, arg1, arg1);
                            if totalSupply > -2:
                                revert with 0, 17
                            totalSupply++
                            if balanceOf[ext_call.return_data[0]] > -2:
                                revert with 0, 17
                            balanceOf[ext_call.return_data[0]]++
                            emit Transfer(1, ext_call.return_data[0], ext_call.return_data[0]);
}

function sub_f53ff6e0(?) payable {
    require calldata.size - 4 >= 32
    mem[100] = arg1
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == msg.sender:
        if sub_4aa5d159[arg1]:
            revert with 0, 'Already have a useful tool'
        require ext_code.size(0x51c0b29a1d84611373ba301706c6b4b72283c80f)
        staticcall 0x51c0b29a1d84611373ba301706c6b4b72283c80f.get_skills(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[ceil32(return_data.size) + 96 len 1152] = ext_call.return_data[0 len 1152]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 1152
        require ceil32(return_data.size) + 127 < ceil32(return_data.size) + return_data.size + 96
        if not bool((2 * ceil32(return_data.size)) + 1248 <= test266151307()):
            revert with 0, 65
        require return_data.size >= 1152
        s = ceil32(return_data.size) + 96
        t = (2 * ceil32(return_data.size)) + 96
        idx = 0
        while idx < 36:
            require mem[s] == mem[s + 31 len 1]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        if not mem[(2 * ceil32(return_data.size)) + 287 len 1]:
            revert with 0, 'Not a crafter'
        require ext_code.size(0x408ce6feb12e41eb6b71fa97fe7b15fcb697b529)
        call 0x408ce6feb12e41eb6b71fa97fe7b15fcb697b529.0xa5cce43e with:
             gas gas_remaining wei
            args arg1, 3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x408ce6feb12e41eb6b71fa97fe7b15fcb697b529)
        call 0x408ce6feb12e41eb6b71fa97fe7b15fcb697b529.0x42342e06 with:
             gas gas_remaining wei
            args arg1, 2, 20
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
        staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.ability_scores(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[(2 * ceil32(return_data.size)) + 1248 len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        require ext_call.return_data[0] == ext_call.return_data[28 len 4]
        require ext_call.return_data[32] == ext_call.return_data[60 len 4]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_call.return_data[96] == ext_call.return_data[124 len 4]
        require ext_call.return_data[128] == ext_call.return_data[156 len 4]
        require ext_call.return_data[160] == ext_call.return_data[188 len 4]
        mem[(4 * ceil32(return_data.size)) + 1252] = arg1
        require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
        staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[(4 * ceil32(return_data.size)) + 1248] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 1 > !ext_call.return_data[0]:
            revert with 0, 17
        if 9 == uint32(ext_call.return_data[96]):
            if ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))) >= 0 and -1 > -('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))) + 127:
                revert with 0, 17
            if ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))) < 0 and -1 < -('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))) - 128:
                revert with 0, 17
            if ('signextend', 0, ('add', -1, ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))) >= 0 and ('signextend', 0, ('mem', ('range', ('add', 287, ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize'))), 1))) > -('signextend', 0, ('add', -1, ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))) + 127:
                revert with 0, 17
            if ('signextend', 0, ('add', -1, ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))) < 0 and ('signextend', 0, ('mem', ('range', ('add', 287, ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize'))), 1))) < -('signextend', 0, ('add', -1, ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))) - 128:
                revert with 0, 17
            if ('signextend', 0, ('add', ('signextend', 0, ('mem', ('range', ('add', 287, ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize'))), 1))), ('signextend', 0, ('add', -1, ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))))) > 14:
                sub_4aa5d159[arg1] = 10
            else:
                if ('signextend', 0, ('add', ('signextend', 0, ('mem', ('range', ('add', 287, ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize'))), 1))), ('signextend', 0, ('add', -1, ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))))) > 10:
                    sub_4aa5d159[arg1] = 8
                else:
                    if ('signextend', 0, ('add', ('signextend', 0, ('mem', ('range', ('add', 287, ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize'))), 1))), ('signextend', 0, ('add', -1, ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))))) <= 6:
                        sub_4aa5d159[arg1] = 4
                    else:
                        sub_4aa5d159[arg1] = 6
        else:
            if ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))) < -118:
                revert with 0, 17
            if ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))) >= 0 and ('signextend', 0, ('sdiv', ('signextend', 0, ('add', -10, ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))))), 2)) > -('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))) + 127:
                revert with 0, 17
            if ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))) < 0 and ('signextend', 0, ('sdiv', ('signextend', 0, ('add', -10, ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))))), 2)) < -('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))) - 128:
                revert with 0, 17
            if ('signextend', 0, ('add', ('signextend', 0, ('sdiv', ('signextend', 0, ('add', -10, ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))))), 2)), ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))) >= 0 and ('signextend', 0, ('mem', ('range', ('add', 287, ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize'))), 1))) > -('signextend', 0, ('add', ('signextend', 0, ('sdiv', ('signextend', 0, ('add', -10, ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))))), 2)), ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))) + 127:
                revert with 0, 17
            if ('signextend', 0, ('add', ('signextend', 0, ('sdiv', ('signextend', 0, ('add', -10, ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))))), 2)), ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))) < 0 and ('signextend', 0, ('mem', ('range', ('add', 287, ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize'))), 1))) < -('signextend', 0, ('add', ('signextend', 0, ('sdiv', ('signextend', 0, ('add', -10, ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))))), 2)), ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))) - 128:
                revert with 0, 17
            if ('signextend', 0, ('add', ('signextend', 0, ('mem', ('range', ('add', 287, ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize'))), 1))), ('signextend', 0, ('add', ('signextend', 0, ('sdiv', ('signextend', 0, ('add', -10, ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))))), 2)), ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))))) > 14:
                sub_4aa5d159[arg1] = 10
            else:
                if ('signextend', 0, ('add', ('signextend', 0, ('mem', ('range', ('add', 287, ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize'))), 1))), ('signextend', 0, ('add', ('signextend', 0, ('sdiv', ('signextend', 0, ('add', -10, ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))))), 2)), ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))))) > 10:
                    sub_4aa5d159[arg1] = 8
                else:
                    if ('signextend', 0, ('add', ('signextend', 0, ('mem', ('range', ('add', 287, ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize'))), 1))), ('signextend', 0, ('add', ('signextend', 0, ('sdiv', ('signextend', 0, ('add', -10, ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))))), 2)), ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))))) <= 6:
                        sub_4aa5d159[arg1] = 4
                    else:
                        sub_4aa5d159[arg1] = 6
    else:
        mem[ceil32(return_data.size) + 100] = arg1
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] == msg.sender:
            if sub_4aa5d159[arg1]:
                revert with 0, 'Already have a useful tool'
            require ext_code.size(0x51c0b29a1d84611373ba301706c6b4b72283c80f)
            staticcall 0x51c0b29a1d84611373ba301706c6b4b72283c80f.get_skills(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[(2 * ceil32(return_data.size)) + 96 len 1152] = ext_call.return_data[0 len 1152]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 1152
            require (2 * ceil32(return_data.size)) + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            if not bool((4 * ceil32(return_data.size)) + 1248 <= test266151307()):
                revert with 0, 65
            require return_data.size >= 1152
            s = (2 * ceil32(return_data.size)) + 96
            t = (4 * ceil32(return_data.size)) + 96
            idx = 0
            while idx < 36:
                require mem[s] == mem[s + 31 len 1]
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx + 1
                continue 
            if not mem[(4 * ceil32(return_data.size)) + 287 len 1]:
                revert with 0, 'Not a crafter'
            require ext_code.size(0x408ce6feb12e41eb6b71fa97fe7b15fcb697b529)
            call 0x408ce6feb12e41eb6b71fa97fe7b15fcb697b529.0xa5cce43e with:
                 gas gas_remaining wei
                args arg1, 3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x408ce6feb12e41eb6b71fa97fe7b15fcb697b529)
            call 0x408ce6feb12e41eb6b71fa97fe7b15fcb697b529.0x42342e06 with:
                 gas gas_remaining wei
                args arg1, 2, 20
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
            staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.ability_scores(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 192
            require ext_call.return_data[0] == ext_call.return_data[28 len 4]
            require ext_call.return_data[32] == ext_call.return_data[60 len 4]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_call.return_data[96] == ext_call.return_data[124 len 4]
            require ext_call.return_data[128] == ext_call.return_data[156 len 4]
            require ext_call.return_data[160] == ext_call.return_data[188 len 4]
            require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
            staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 1 > !ext_call.return_data[0]:
                revert with 0, 17
            if 9 == uint32(ext_call.return_data[96]):
                if ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))) >= 0 and -1 > -('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))) + 127:
                    revert with 0, 17
                if ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))) < 0 and -1 < -('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))) - 128:
                    revert with 0, 17
                if ('signextend', 0, ('add', -1, ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))) >= 0 and ('signextend', 0, ('mem', ('range', ('add', 287, ('mask_shl', 249, 5, 2, ('add', 31, 'returndatasize'))), 1))) > -('signextend', 0, ('add', -1, ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))) + 127:
                    revert with 0, 17
                if ('signextend', 0, ('add', -1, ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))) < 0 and ('signextend', 0, ('mem', ('range', ('add', 287, ('mask_shl', 249, 5, 2, ('add', 31, 'returndatasize'))), 1))) < -('signextend', 0, ('add', -1, ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))) - 128:
                    revert with 0, 17
                if ('signextend', 0, ('add', ('signextend', 0, ('mem', ('range', ('add', 287, ('mask_shl', 249, 5, 2, ('add', 31, 'returndatasize'))), 1))), ('signextend', 0, ('add', -1, ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))))) > 14:
                    sub_4aa5d159[arg1] = 10
                else:
                    if ('signextend', 0, ('add', ('signextend', 0, ('mem', ('range', ('add', 287, ('mask_shl', 249, 5, 2, ('add', 31, 'returndatasize'))), 1))), ('signextend', 0, ('add', -1, ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))))) > 10:
                        sub_4aa5d159[arg1] = 8
                    else:
                        if ('signextend', 0, ('add', ('signextend', 0, ('mem', ('range', ('add', 287, ('mask_shl', 249, 5, 2, ('add', 31, 'returndatasize'))), 1))), ('signextend', 0, ('add', -1, ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))))) <= 6:
                            sub_4aa5d159[arg1] = 4
                        else:
                            sub_4aa5d159[arg1] = 6
            else:
                if ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))) < -118:
                    revert with 0, 17
                if ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))) >= 0 and ('signextend', 0, ('sdiv', ('signextend', 0, ('add', -10, ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))))), 2)) > -('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))) + 127:
                    revert with 0, 17
                if ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))) < 0 and ('signextend', 0, ('sdiv', ('signextend', 0, ('add', -10, ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))))), 2)) < -('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))) - 128:
                    revert with 0, 17
                if ('signextend', 0, ('add', ('signextend', 0, ('sdiv', ('signextend', 0, ('add', -10, ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))))), 2)), ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))) >= 0 and ('signextend', 0, ('mem', ('range', ('add', 287, ('mask_shl', 249, 5, 2, ('add', 31, 'returndatasize'))), 1))) > -('signextend', 0, ('add', ('signextend', 0, ('sdiv', ('signextend', 0, ('add', -10, ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))))), 2)), ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))) + 127:
                    revert with 0, 17
                if ('signextend', 0, ('add', ('signextend', 0, ('sdiv', ('signextend', 0, ('add', -10, ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))))), 2)), ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))) < 0 and ('signextend', 0, ('mem', ('range', ('add', 287, ('mask_shl', 249, 5, 2, ('add', 31, 'returndatasize'))), 1))) < -('signextend', 0, ('add', ('signextend', 0, ('sdiv', ('signextend', 0, ('add', -10, ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))))), 2)), ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))) - 128:
                    revert with 0, 17
                if ('signextend', 0, ('add', ('signextend', 0, ('mem', ('range', ('add', 287, ('mask_shl', 249, 5, 2, ('add', 31, 'returndatasize'))), 1))), ('signextend', 0, ('add', ('signextend', 0, ('sdiv', ('signextend', 0, ('add', -10, ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))))), 2)), ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))))) > 14:
                    sub_4aa5d159[arg1] = 10
                else:
                    if ('signextend', 0, ('add', ('signextend', 0, ('mem', ('range', ('add', 287, ('mask_shl', 249, 5, 2, ('add', 31, 'returndatasize'))), 1))), ('signextend', 0, ('add', ('signextend', 0, ('sdiv', ('signextend', 0, ('add', -10, ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))))), 2)), ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))))) > 10:
                        sub_4aa5d159[arg1] = 8
                    else:
                        if ('signextend', 0, ('add', ('signextend', 0, ('mem', ('range', ('add', 287, ('mask_shl', 249, 5, 2, ('add', 31, 'returndatasize'))), 1))), ('signextend', 0, ('add', ('signextend', 0, ('sdiv', ('signextend', 0, ('add', -10, ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))))), 2)), ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))))) <= 6:
                            sub_4aa5d159[arg1] = 4
                        else:
                            sub_4aa5d159[arg1] = 6
        else:
            mem[(2 * ceil32(return_data.size)) + 100] = arg1
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(4 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.isApprovedForAll(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), msg.sender
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Not your summoner'
            if sub_4aa5d159[arg1]:
                revert with 0, 'Already have a useful tool'
            require ext_code.size(0x51c0b29a1d84611373ba301706c6b4b72283c80f)
            staticcall 0x51c0b29a1d84611373ba301706c6b4b72283c80f.get_skills(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[(6 * ceil32(return_data.size)) + 96 len 1152] = ext_call.return_data[0 len 1152]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 1152
            require (6 * ceil32(return_data.size)) + 127 < (6 * ceil32(return_data.size)) + return_data.size + 96
            if not bool((7 * ceil32(return_data.size)) + 1248 <= test266151307()):
                revert with 0, 65
            require return_data.size >= 1152
            s = (6 * ceil32(return_data.size)) + 96
            t = (7 * ceil32(return_data.size)) + 96
            idx = 0
            while idx < 36:
                require mem[s] == mem[s + 31 len 1]
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx + 1
                continue 
            if not mem[(7 * ceil32(return_data.size)) + 287 len 1]:
                revert with 0, 'Not a crafter'
            require ext_code.size(0x408ce6feb12e41eb6b71fa97fe7b15fcb697b529)
            call 0x408ce6feb12e41eb6b71fa97fe7b15fcb697b529.0xa5cce43e with:
                 gas gas_remaining wei
                args arg1, 3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x408ce6feb12e41eb6b71fa97fe7b15fcb697b529)
            call 0x408ce6feb12e41eb6b71fa97fe7b15fcb697b529.0x42342e06 with:
                 gas gas_remaining wei
                args arg1, 2, 20
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1)
            staticcall 0xb5f5af1087a8da62a23b08c00c6ec9af21f397a1.ability_scores(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[(7 * ceil32(return_data.size)) + 1248 len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 192
            require ext_call.return_data[0] == ext_call.return_data[28 len 4]
            require ext_call.return_data[32] == ext_call.return_data[60 len 4]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_call.return_data[96] == ext_call.return_data[124 len 4]
            require ext_call.return_data[128] == ext_call.return_data[156 len 4]
            require ext_call.return_data[160] == ext_call.return_data[188 len 4]
            mem[(8 * ceil32(return_data.size)) + 1252] = arg1
            require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
            staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[(8 * ceil32(return_data.size)) + 1248] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 1 > !ext_call.return_data[0]:
                revert with 0, 17
            if 9 == uint32(ext_call.return_data[96]):
                if ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))) >= 0 and -1 > -('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))) + 127:
                    revert with 0, 17
                if ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))) < 0 and -1 < -('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))) - 128:
                    revert with 0, 17
                if ('signextend', 0, ('add', -1, ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))) >= 0 and ('signextend', 0, ('mem', ('range', ('add', 287, ('mul', 7, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')))), 1))) > -('signextend', 0, ('add', -1, ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))) + 127:
                    revert with 0, 17
                if ('signextend', 0, ('add', -1, ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))) < 0 and ('signextend', 0, ('mem', ('range', ('add', 287, ('mul', 7, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')))), 1))) < -('signextend', 0, ('add', -1, ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))) - 128:
                    revert with 0, 17
                if ('signextend', 0, ('add', ('signextend', 0, ('mem', ('range', ('add', 287, ('mul', 7, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')))), 1))), ('signextend', 0, ('add', -1, ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))))) > 14:
                    sub_4aa5d159[arg1] = 10
                else:
                    if ('signextend', 0, ('add', ('signextend', 0, ('mem', ('range', ('add', 287, ('mul', 7, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')))), 1))), ('signextend', 0, ('add', -1, ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))))) > 10:
                        sub_4aa5d159[arg1] = 8
                    else:
                        if ('signextend', 0, ('add', ('signextend', 0, ('mem', ('range', ('add', 287, ('mul', 7, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')))), 1))), ('signextend', 0, ('add', -1, ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))))) <= 6:
                            sub_4aa5d159[arg1] = 4
                        else:
                            sub_4aa5d159[arg1] = 6
            else:
                if ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))) < -118:
                    revert with 0, 17
                if ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))) >= 0 and ('signextend', 0, ('sdiv', ('signextend', 0, ('add', -10, ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))))), 2)) > -('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))) + 127:
                    revert with 0, 17
                if ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))) < 0 and ('signextend', 0, ('sdiv', ('signextend', 0, ('add', -10, ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))))), 2)) < -('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))) - 128:
                    revert with 0, 17
                if ('signextend', 0, ('add', ('signextend', 0, ('sdiv', ('signextend', 0, ('add', -10, ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))))), 2)), ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))) >= 0 and ('signextend', 0, ('mem', ('range', ('add', 287, ('mul', 7, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')))), 1))) > -('signextend', 0, ('add', ('signextend', 0, ('sdiv', ('signextend', 0, ('add', -10, ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))))), 2)), ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))) + 127:
                    revert with 0, 17
                if ('signextend', 0, ('add', ('signextend', 0, ('sdiv', ('signextend', 0, ('add', -10, ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))))), 2)), ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))) < 0 and ('signextend', 0, ('mem', ('range', ('add', 287, ('mul', 7, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')))), 1))) < -('signextend', 0, ('add', ('signextend', 0, ('sdiv', ('signextend', 0, ('add', -10, ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))))), 2)), ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))) - 128:
                    revert with 0, 17
                if ('signextend', 0, ('add', ('signextend', 0, ('mem', ('range', ('add', 287, ('mul', 7, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')))), 1))), ('signextend', 0, ('add', ('signextend', 0, ('sdiv', ('signextend', 0, ('add', -10, ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))))), 2)), ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))))) > 14:
                    sub_4aa5d159[arg1] = 10
                else:
                    if ('signextend', 0, ('add', ('signextend', 0, ('mem', ('range', ('add', 287, ('mul', 7, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')))), 1))), ('signextend', 0, ('add', ('signextend', 0, ('sdiv', ('signextend', 0, ('add', -10, ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))))), 2)), ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))))) > 10:
                        sub_4aa5d159[arg1] = 8
                    else:
                        if ('signextend', 0, ('add', ('signextend', 0, ('mem', ('range', ('add', 287, ('mul', 7, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize')))), 1))), ('signextend', 0, ('add', ('signextend', 0, ('sdiv', ('signextend', 0, ('add', -10, ('signextend', 0, ('mask_shl', 32, 0, 0, ('ext_call.return_data', 96, 32))))), 2)), ('signextend', 0, ('add', 1, ('ext_call.return_data', 0, 32))))))) <= 6:
                            sub_4aa5d159[arg1] = 4
                        else:
                            sub_4aa5d159[arg1] = 6
}



}
