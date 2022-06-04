contract main {




// =====================  Runtime code  =====================


array of struct sub_db5b4c54;
mapping of struct ledger;
array of struct sub_c7fa5ec9;
address owner;
uint256 sub_95c37b6a;

function ledger(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(ledger[arg1].field_0), 
           ledger[arg1].field_256,
           ledger[arg1].field_512,
           ledger[arg1].field_768,
           ledger[arg1].field_1024,
           ledger[arg1].field_1280
}

function owner() {
    return owner
}

function sub_95c37b6a(?) {
    return sub_95c37b6a
}

function sub_c7fa5ec9(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_c7fa5ec9.length
    return sub_c7fa5ec9[arg1].field_0
}

function sub_db5b4c54(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < sub_db5b4c54[arg1].field_0
    return sub_db5b4c54[arg1][arg2].field_0
}

function _fallback() payable {
    revert
}

function sub_c04bd362(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    sub_95c37b6a = arg1
}

function change_owner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    owner = arg1
}

function sub_36572ea8(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    call address(arg1) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b5484b61(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 and sub_95c37b6a > -1 / arg1:
        revert with 'NH{q', 17
    if arg1 * sub_95c37b6a / 100 and sub_c7fa5ec9.length > -1 / arg1 * sub_95c37b6a / 100:
        revert with 'NH{q', 17
    if arg1 < arg1 * sub_95c37b6a / 100 * sub_c7fa5ec9.length:
        revert with 'NH{q', 17
    return arg1 * sub_95c37b6a / 100, arg1 - (arg1 * sub_95c37b6a / 100 * sub_c7fa5ec9.length)
}

function sub_a918f83a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_db5b4c54[address(arg1)].field_0:
        mem[128] = sub_db5b4c54[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * sub_db5b4c54[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = sub_db5b4c54[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_db5b4c54[address(arg1)].field_0, data=mem[128 len 32 * sub_db5b4c54[address(arg1)].field_0])
    mem[(32 * sub_db5b4c54[address(arg1)].field_0) + 128] = 32
    mem[(32 * sub_db5b4c54[address(arg1)].field_0) + 160] = sub_db5b4c54[address(arg1)].field_0
    mem[(32 * sub_db5b4c54[address(arg1)].field_0) + 192 len 32 * sub_db5b4c54[address(arg1)].field_0] = mem[128 len 32 * sub_db5b4c54[address(arg1)].field_0]
    return memory
      from (32 * sub_db5b4c54[address(arg1)].field_0) + 128
       len (96 * sub_db5b4c54[address(arg1)].field_0) + 64
}

function sub_e9b9a44a(?) {
    mem[64] = (32 * sub_c7fa5ec9.length) + 128
    mem[96] = sub_c7fa5ec9.length
    if not sub_c7fa5ec9.length:
        mem[(32 * sub_c7fa5ec9.length) + 128] = 32
        mem[(32 * sub_c7fa5ec9.length) + 160] = sub_c7fa5ec9.length
        idx = 0
        s = 128
        t = (32 * sub_c7fa5ec9.length) + 192
        while idx < sub_c7fa5ec9.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_c7fa5ec9.length) + 128
           len (96 * sub_c7fa5ec9.length) + 64
    mem[128] = address(sub_c7fa5ec9.field_0)
    idx = 128
    s = 0
    while (32 * sub_c7fa5ec9.length) + 96 > idx:
        mem[idx + 32] = sub_c7fa5ec9[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_c7fa5ec9.length) + 128] = 32
    mem[(32 * sub_c7fa5ec9.length) + 160] = sub_c7fa5ec9.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < sub_c7fa5ec9.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_c7fa5ec9.length) + -mem[64] + 192
}

function sub_5340446f(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    sub_c7fa5ec9.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_c7fa5ec9.length > idx:
            sub_c7fa5ec9[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            sub_c7fa5ec9[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_c7fa5ec9.length > idx:
            sub_c7fa5ec9[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_2254da7d(?) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == arg6
    if address(arg4) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transaction Issuer and Buyer Address Mismatch'
    if ledger[arg1].field_0:
        revert with 0, 'Key Already Assigned'
    require ext_code.size(address(arg3))
    staticcall address(arg3).ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != address(arg4):
        revert with 0, 'Not Owner of NFT or Invalid NFT Address'
    if arg6 <= 0:
        revert with 0, 'Invalid Weth Provided'
    sub_db5b4c54[address(msg.sender)].field_0++
    sub_db5b4c54[address(msg.sender)][sub_db5b4c54[address(msg.sender)].field_0].field_0 = arg1
    ledger[arg1].field_0 = 1
    ledger[arg1].field_256 = arg2
    ledger[arg1].field_512 = address(arg3)
    ledger[arg1].field_768 = address(arg4)
    ledger[arg1].field_1024 = address(arg5)
    ledger[arg1].field_1280 = arg6
    emit 0x4744c9f4: arg1, arg2, address(arg4), address(arg5), arg6
}

function sub_b04f5c82(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ledger[arg1].field_0:
        revert with 0, 'Invalid Key'
    if ledger[arg1].field_768 != msg.sender:
        revert with 0, 'Transaction Issuer and Seller Address Mismatch'
    mem[288] = sub_db5b4c54[address(msg.sender)].field_0
    if sub_db5b4c54[address(msg.sender)].field_0:
        mem[320] = sub_db5b4c54[address(msg.sender)].field_0
        idx = 320
        s = 0
        while (32 * sub_db5b4c54[address(msg.sender)].field_0) + 288 > idx:
            mem[idx + 32] = sub_db5b4c54[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    while idx < sub_db5b4c54[address(msg.sender)].field_0:
        if idx >= sub_db5b4c54[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        if mem[(32 * idx) + 320] == arg1:
            if sub_db5b4c54[address(msg.sender)].field_0 < 1:
                revert with 'NH{q', 17
            if sub_db5b4c54[address(msg.sender)].field_0 - 1 >= sub_db5b4c54[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            if idx >= sub_db5b4c54[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            sub_db5b4c54[address(msg.sender)][idx].field_0 = mem[(32 * sub_db5b4c54[address(msg.sender)].field_0 - 1) + 320]
            mem[32] = 0
            if not sub_db5b4c54[address(msg.sender)].field_0:
                revert with 'NH{q', 49
            mem[0] = sha3(address(msg.sender), 0)
            sub_db5b4c54[address(msg.sender)][sub_db5b4c54[address(msg.sender)].field_0].field_0 = 0
            sub_db5b4c54[address(msg.sender)].field_0--
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    ledger[arg1].field_0 = 0
    ledger[arg1].field_256 = 0
    ledger[arg1].field_512 = 0
    ledger[arg1].field_768 = 0
    ledger[arg1].field_1024 = 0
    ledger[arg1].field_1280 = 0
    emit 0xfca8fcc6: arg1
}

function sub_37200518(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ledger[arg1].field_0:
        revert with 0, 'Invalid Key'
    if ledger[arg1].field_1024:
        if ledger[arg1].field_1024 != msg.sender:
            revert with 0, 'Wrong Buyer'
    if ledger[arg1].field_1280 != msg.value:
        revert with 0, 'Wrong Bid Amount'
    require ext_code.size(ledger[arg1].field_512)
    staticcall ledger[arg1].field_512.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args ledger[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != ledger[arg1].field_768:
        revert with 0, 'Nft seller is not owner of NFT'
    if msg.value and sub_95c37b6a > -1 / msg.value:
        revert with 'NH{q', 17
    if msg.value * sub_95c37b6a / 100 and sub_c7fa5ec9.length > -1 / msg.value * sub_95c37b6a / 100:
        revert with 'NH{q', 17
    if msg.value < msg.value * sub_95c37b6a / 100 * sub_c7fa5ec9.length:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 292] = ledger[arg1].field_768
    mem[ceil32(return_data.size) + 324] = msg.sender
    mem[ceil32(return_data.size) + 356] = ledger[arg1].field_256
    require ext_code.size(ledger[arg1].field_512)
    call ledger[arg1].field_512.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args ledger[arg1].field_768, msg.sender, ledger[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < sub_c7fa5ec9.length:
        mem[0] = 2
        call sub_c7fa5ec9[idx].field_0 with:
           value msg.value * sub_95c37b6a / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    call ledger[arg1].field_768 with:
       value msg.value - (msg.value * sub_95c37b6a / 100 * sub_c7fa5ec9.length) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 288] = sub_db5b4c54[address(msg.sender)].field_0
    if sub_db5b4c54[address(msg.sender)].field_0:
        mem[ceil32(return_data.size) + 320] = sub_db5b4c54[address(msg.sender)].field_0
        idx = ceil32(return_data.size) + 320
        s = 0
        while ceil32(return_data.size) + (32 * sub_db5b4c54[address(msg.sender)].field_0) + 288 > idx:
            mem[idx + 32] = sub_db5b4c54[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    while idx < sub_db5b4c54[address(msg.sender)].field_0:
        if idx >= sub_db5b4c54[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        if mem[(32 * idx) + ceil32(return_data.size) + 320] == arg1:
            if sub_db5b4c54[address(msg.sender)].field_0 < 1:
                revert with 'NH{q', 17
            if sub_db5b4c54[address(msg.sender)].field_0 - 1 >= sub_db5b4c54[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            if idx >= sub_db5b4c54[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            sub_db5b4c54[address(msg.sender)][idx].field_0 = mem[(32 * sub_db5b4c54[address(msg.sender)].field_0 - 1) + ceil32(return_data.size) + 320]
            mem[32] = 0
            if not sub_db5b4c54[address(msg.sender)].field_0:
                revert with 'NH{q', 49
            mem[0] = sha3(address(msg.sender), 0)
            sub_db5b4c54[address(msg.sender)][sub_db5b4c54[address(msg.sender)].field_0].field_0 = 0
            sub_db5b4c54[address(msg.sender)].field_0--
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    ledger[arg1].field_0 = 0
    ledger[arg1].field_256 = 0
    ledger[arg1].field_512 = 0
    ledger[arg1].field_768 = 0
    ledger[arg1].field_1024 = 0
    ledger[arg1].field_1280 = 0
    emit 0xe74c3da0: arg1, ledger[arg1].field_768, ledger[arg1].field_1024, ledger[arg1].field_256, ledger[arg1].field_1280
}



}
