contract main {




// =====================  Runtime code  =====================


address sub_37f9e0deAddress;
address sub_9df6c44fAddress;
address sub_587173caAddress;
address sub_c4e3cc43Address;
address sub_b4993ecfAddress;
address sub_1a331eb1Address;
address sub_1206a69cAddress;
address sub_ea9abaeeAddress;
address sub_03737857Address;
address sub_2844be84Address;
address sub_3769ccffAddress;
address sub_f6c6e5e8Address;
address sub_87ced3dcAddress;
address sub_f088996fAddress;
address sub_dbd33e45Address;
address sub_85b374c3Address;
address sub_1e9b8c59Address;
address sub_33aa2191Address;
address sub_7abd5a1cAddress;
address sub_63f96cf4Address;
address zapAddress;

function sub_03737857(?) payable {
    return sub_03737857Address
}

function sub_1206a69c(?) payable {
    return sub_1206a69cAddress
}

function sub_1a331eb1(?) payable {
    return sub_1a331eb1Address
}

function sub_1e9b8c59(?) payable {
    return sub_1e9b8c59Address
}

function zap() payable {
    return zapAddress
}

function sub_2844be84(?) payable {
    return sub_2844be84Address
}

function sub_33aa2191(?) payable {
    return sub_33aa2191Address
}

function sub_3769ccff(?) payable {
    return sub_3769ccffAddress
}

function sub_37f9e0de(?) payable {
    return sub_37f9e0deAddress
}

function sub_587173ca(?) payable {
    return sub_587173caAddress
}

function sub_63f96cf4(?) payable {
    return sub_63f96cf4Address
}

function sub_7abd5a1c(?) payable {
    return sub_7abd5a1cAddress
}

function sub_85b374c3(?) payable {
    return sub_85b374c3Address
}

function sub_87ced3dc(?) payable {
    return sub_87ced3dcAddress
}

function sub_9df6c44f(?) payable {
    return sub_9df6c44fAddress
}

function sub_b4993ecf(?) payable {
    return sub_b4993ecfAddress
}

function sub_c4e3cc43(?) payable {
    return sub_c4e3cc43Address
}

function sub_dbd33e45(?) payable {
    return sub_dbd33e45Address
}

function sub_ea9abaee(?) payable {
    return sub_ea9abaeeAddress
}

function sub_f088996f(?) payable {
    return sub_f088996fAddress
}

function sub_f6c6e5e8(?) payable {
    return sub_f6c6e5e8Address
}

function _fallback() payable {
    revert
}

function compound() payable {
    sub_85b374c3Address = sub_9df6c44fAddress
    sub_dbd33e45Address = sub_37f9e0deAddress
    sub_1e9b8c59Address = sub_c4e3cc43Address
    sub_33aa2191Address = sub_b4993ecfAddress
    sub_f088996fAddress = sub_3769ccffAddress
    sub_87ced3dcAddress = sub_ea9abaeeAddress
    sub_63f96cf4Address = sub_2844be84Address
    sub_7abd5a1cAddress = sub_03737857Address
    sub_f6c6e5e8Address = sub_1206a69cAddress
    zapAddress = sub_1a331eb1Address
    require ext_code.size(sub_dbd33e45Address)
    call sub_dbd33e45Address.taxRate() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = msg.sender
    require ext_code.size(sub_63f96cf4Address)
    call sub_63f96cf4Address.canClaimReward(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Can't claim from masonry yet'
    mem[(2 * ceil32(return_data.size)) + 100] = sub_37f9e0deAddress
    mem[(2 * ceil32(return_data.size)) + 132] = 1
    require ext_code.size(sub_7abd5a1cAddress)
    call sub_7abd5a1cAddress.consult(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_37f9e0deAddress, 1
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= 1:
        mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
        require ext_code.size(sub_dbd33e45Address)
        call sub_dbd33e45Address.balanceOf(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(sub_dbd33e45Address)
        call sub_dbd33e45Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_1206a69cAddress, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if False and ext_call.return_data[0] > 0:
            revert with 'NH{q', 17
        if False and ext_call.return_data[0] > 0:
            revert with 'NH{q', 17
        mem[(6 * ceil32(return_data.size)) + 96] = sub_37f9e0deAddress
        mem[(6 * ceil32(return_data.size)) + 128] = sub_587173caAddress
        if block.timestamp > -121:
            revert with 'NH{q', 17
        mem[(6 * ceil32(return_data.size)) + 160] = 0x7dd0674800000000000000000000000000000000000000000000000000000000
        mem[(6 * ceil32(return_data.size)) + 164] = 0
        mem[(6 * ceil32(return_data.size)) + 196] = 0
        idx = 0
        s = (6 * ceil32(return_data.size)) + 96
        t = (6 * ceil32(return_data.size)) + 228
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(6 * ceil32(return_data.size)) + 292] = msg.sender
        mem[(6 * ceil32(return_data.size)) + 324] = block.timestamp + 120
        require ext_code.size(sub_f6c6e5e8Address)
        call sub_f6c6e5e8Address.0x7dd06748 with:
             gas gas_remaining wei
            args 0, 0, mem[(6 * ceil32(return_data.size)) + 228 len 64], msg.sender, block.timestamp + 120
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_dbd33e45Address)
        call sub_dbd33e45Address.balanceOf(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        mem[(7 * ceil32(return_data.size)) + 164] = msg.sender
        require ext_code.size(sub_1e9b8c59Address)
        call sub_1e9b8c59Address.balanceOf(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        mem[(7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 196] = 0
        mem[(8 * ceil32(return_data.size)) + 228] = 0
        require ext_code.size(sub_87ced3dcAddress)
        call sub_87ced3dcAddress.0x73baccc0 with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + 164] = msg.sender
        require ext_code.size(sub_1e9b8c59Address)
        call sub_1e9b8c59Address.balanceOf(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        require ext_code.size(sub_85b374c3Address)
        call sub_85b374c3Address.balanceOf(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(11 * ceil32(return_data.size)) + 196] = 0
        require ext_code.size(sub_f088996fAddress)
        call sub_f088996fAddress.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_85b374c3Address)
        call sub_85b374c3Address.balanceOf(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        mem[(12 * ceil32(return_data.size)) + 196] = 1
        require ext_code.size(sub_7abd5a1cAddress)
        call sub_7abd5a1cAddress.consult(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_37f9e0deAddress, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(13 * ceil32(return_data.size)) + 164] = msg.sender
        require ext_code.size(sub_85b374c3Address)
        call sub_85b374c3Address.balanceOf(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(sub_85b374c3Address)
        call sub_85b374c3Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_1206a69cAddress, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 0 and ext_call.return_data[0] > -1 / 0:
            revert with 'NH{q', 17
        mem[(14 * ceil32(return_data.size)) + 160] = sub_9df6c44fAddress
        mem[(14 * ceil32(return_data.size)) + 192] = sub_587173caAddress
        if block.timestamp > -121:
            revert with 'NH{q', 17
        mem[(14 * ceil32(return_data.size)) + 224] = 0x7dd0674800000000000000000000000000000000000000000000000000000000
        mem[(14 * ceil32(return_data.size)) + 228] = 0
        idx = 0
        s = (14 * ceil32(return_data.size)) + 160
        t = (14 * ceil32(return_data.size)) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(sub_f6c6e5e8Address)
        call sub_f6c6e5e8Address.0x7dd06748 with:
             gas gas_remaining wei
            args 0, 0, mem[(14 * ceil32(return_data.size)) + 292 len 64], msg.sender, block.timestamp + 120
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_85b374c3Address)
        call sub_85b374c3Address.balanceOf(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        require ext_code.size(sub_33aa2191Address)
        call sub_33aa2191Address.balanceOf(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(zapAddress)
        call zapAddress.0xcee6202c with:
             gas gas_remaining wei
            args sub_9df6c44fAddress, 0, sub_b4993ecfAddress, sub_1206a69cAddress, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(sub_33aa2191Address)
        call sub_33aa2191Address.balanceOf(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        require ext_code.size(sub_85b374c3Address)
        call sub_85b374c3Address.balanceOf(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(sub_f088996fAddress)
        call sub_f088996fAddress.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_85b374c3Address)
        call sub_85b374c3Address.balanceOf(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 'NH{q', 17
}



}
