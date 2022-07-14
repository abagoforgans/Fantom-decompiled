contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address owner; offset 8
uint256 startDate;
uint256 endDate;
uint256 totalBurned;
mapping of uint256 scores;
array of struct sub_d38b576d;
address resourceAddress;

function startDate() {
    return startDate
}

function scores(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return scores[arg1]
}

function resource() {
    return resourceAddress
}

function owner() {
    return owner
}

function endDate() {
    return endDate
}

function sub_d38b576d(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_d38b576d.length
    return sub_d38b576d[arg1].field_0
}

function totalBurned() {
    return totalBurned
}

function claimed() {
    return bool(stor0)
}

function _fallback() payable {
    revert
}

function withdrawl() payable {
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    if block.timestamp >= startDate:
        if endDate > -604801:
            revert with 'NH{q', 17
        if block.timestamp <= endDate + (168 * 24 * 3600):
            revert with 0, 'Cannot withdrawl'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
    emit Withdrawl(msg.sender, eth.balance(this.address));
}

function sub_568d4f99(?) {
    if sub_d38b576d.length:
        mem[128] = uint256(sub_d38b576d.field_0)
        idx = 128
        s = 0
        while (32 * sub_d38b576d.length) + 96 > idx:
            mem[idx + 32] = sub_d38b576d[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_d38b576d.length, data=mem[128 len 32 * sub_d38b576d.length])
    mem[(32 * sub_d38b576d.length) + 128] = 32
    mem[(32 * sub_d38b576d.length) + 160] = sub_d38b576d.length
    mem[(32 * sub_d38b576d.length) + 192 len 32 * sub_d38b576d.length] = mem[128 len 32 * sub_d38b576d.length]
    return memory
      from (32 * sub_d38b576d.length) + 128
       len (96 * sub_d38b576d.length) + 64
}

function claim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp <= endDate:
        revert with 0, 'Competition not over'
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Must own NFT'
    if stor0:
        revert with 0, 'Already Claimed'
    idx = 0
    s = 0
    while idx < sub_d38b576d.length:
        mem[0] = sub_d38b576d[idx].field_0
        mem[32] = 4
        if scores[stor5[idx].field_0] <= s:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= sub_d38b576d.length:
            revert with 'NH{q', 50
        mem[0] = sub_d38b576d[idx].field_0
        mem[32] = 4
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = scores[stor5[idx].field_0]
        continue 
    if scores[arg1] != s:
        revert with 0, 'Not the winner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
    emit Claim(msg.sender, eth.balance(this.address), arg1);
}

function sub_b445e7a1(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if block.timestamp <= startDate:
        revert with 0, 'Competition not started'
    if block.timestamp >= endDate:
        revert with 0, 'Competition closed'
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Must own NFT'
    require ext_code.size(resourceAddress)
    call resourceAddress.0x8769fd41 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if scores[arg1] < 1:
        sub_d38b576d.length++
        sub_d38b576d[sub_d38b576d.length].field_0 = arg1
    require ext_code.size(0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4)
    staticcall 0x7426dbe5207c2b5dac57d8e55f0959fcd99661d4.d20(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -2:
        revert with 'NH{q', 17
    if ext_call.return_data[0] + 1 and arg2 > -1 / ext_call.return_data[0] + 1:
        revert with 'NH{q', 17
    if scores[arg1] > -arg2 + (-1 * ext_call.return_data[0] * arg2) - 1:
        revert with 'NH{q', 17
    scores[arg1] = scores[arg1] + arg2 + (ext_call.return_data[0] * arg2)
    if totalBurned > -arg2 - 1:
        revert with 'NH{q', 17
    totalBurned += arg2
    emit 0x977b8591: ext_call.return_data[0] + 1, arg2, arg1
}



}
